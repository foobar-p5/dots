local name = "neopywal"
return {
  src = "https://github.com/RedsXDD/neopywal.nvim",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)
    require("neopywal").setup({
      colorscheme = "pywal",
      transparent_background = true,
    })
  end,
}
