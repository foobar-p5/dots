local name = "scrollview"
return {
  src = "https://github.com/dstein64/nvim-scrollview",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)
    require("scrollview").setup()
  end,
}
