local name = "numb"
return {
  src = "https://github.com/nacro90/numb.nvim",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)
    require(name).setup()
  end,
}
