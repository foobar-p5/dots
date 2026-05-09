local name = "linter"
return {
  src = "https://github.com/mfussenegger/nvim-lint",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)
  end,
}
