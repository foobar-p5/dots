local name = "transparent"
return {
  src = "https://github.com/xiyaowong/transparent.nvim",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)
    require(name).setup()
  end,
}
