local name = "dropbar"
return {
  src = "https://github.com/Bekaboo/dropbar.nvim",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)

    local configs = require("dropbar.configs")

    for k, _ in pairs(configs.opts.icons.kinds.symbols) do
      configs.opts.icons.kinds.symbols[k] = ""
    end

    require("dropbar").setup({
      icons = {
        enable = true,
        kinds = {
          dir_icon = function() return "", "" end,
          file_icon = function() return "", "" end,
        },
        ui = {
          bar = {
            separator = " > ",
            extends = "",
          },
          menu = {
            separator = " ",
            indicator = " ",
          },
        },
      },
    })
  end
}
