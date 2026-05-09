local name = "multiple-cursors"
return {
  src = "https://github.com/brenton-leighton/multiple-cursors.nvim",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)
    require("multiple-cursors").setup()
  end
}
