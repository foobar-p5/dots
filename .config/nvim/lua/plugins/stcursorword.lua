local name = "stcursorword"
return {
  src = "https://github.com/sontungexpt/stcursorword",
  name = name,
  setup = function()
    vim.cmd("packadd " .. name)
    require(name).setup()
  end,
}
