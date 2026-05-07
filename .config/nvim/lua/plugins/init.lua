local function get_plugin_files()
  local plugins_dir = vim.fn.stdpath("config") .. "/lua/plugins"
  local files = {}
  local dir = vim.loop.fs_opendir(plugins_dir)
  if not dir then
    return files
  end
  while true do
    local entries = vim.loop.fs_readdir(dir)
    if not entries then
      break
    end
    for i = 1, #entries do
      local entry = entries[i]
      if entry.type == "file" and entry.name ~= "init.lua" and entry.name:match("%.lua$") then
        files[#files + 1] = entry.name:gsub("%.lua$", "")
      end
    end
  end
  vim.loop.fs_closedir(dir)
  return files
end

local function detect_unused_plugins()
  local active_plugins = {}
  for _, plugin in ipairs(vim.pack.get()) do
    active_plugins[plugin.spec.name] = plugin.active
  end

  local unused = {}
  for name, active in pairs(active_plugins) do
    if not active then
      table.insert(unused, name)
    end
  end

  if #unused > 0 then
    vim.pack.del(unused, { force = true })
    print("Deleted unused plugins: " .. table.concat(unused, ", "))
  end
end

local plugins = {}
for _, file in ipairs(get_plugin_files()) do
  local plugin = require("plugins." .. file)
  plugins[#plugins + 1] = plugin
end

local specs = {}
for _, plugin in ipairs(plugins) do
  specs[#specs + 1] = {
    src = plugin.src,
    name = plugin.name,
  }
end

vim.pack.add(specs)

for _, plugin in ipairs(plugins) do
  if plugin.setup then
    plugin.setup()
  end
end

vim.defer_fn(detect_unused_plugins, 100)
