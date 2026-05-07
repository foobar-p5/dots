local vo, vg, va, vc = vim.o, vim.g, vim.api, vim.cmd

vo.swapfile = false
vo.undofile = true

vo.autoindent = false
vo.smartindent = true
vo.expandtab = true
vo.tabstop = 2
vo.shiftwidth = 2
vo.softtabstop = 2

vo.ignorecase = true
vo.smartcase = true

vo.number = true
vo.relativenumber = false
vo.cursorline = true
vo.showmode = true
vo.termguicolors = true
vo.signcolumn = "yes"
vo.clipboard = "unnamedplus"
vo.completeopt = "menuone,noinsert,noselect"

vo.confirm = true
vo.autoread = true
vg.mapleader = " "

vc.colorscheme("lackluster")

va.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local mark = va.nvim_buf_get_mark(0, '"')
    local lcount = va.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(va.nvim_win_set_cursor, 0, mark)
    end
  end,
})
