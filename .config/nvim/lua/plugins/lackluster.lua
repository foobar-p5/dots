local name = "lackluster"
return {
  src = "https://github.com/slugbyte/lackluster.nvim",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)
    require("lackluster").setup({
      tweak_background = {
        normal = 'none',
        float = 'none',
      },
    })
  end,
}
