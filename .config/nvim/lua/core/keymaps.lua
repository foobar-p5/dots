local map = vim.keymap.set
local dropbar = require("dropbar.api")

map("n", ";", ":")
map({ 'n', 'v' }, ' ', '<Nop>')
map("n", "q", "<Nop>")
map("v", "q", "<Nop>")

map({ "n", "i", "v" }, "<C-d>", "<Del>")

map({ "n", "i", "v" }, "<C-a>", "<Home>")
map({ "n", "i", "v" }, "<C-e>", "<End>")

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>x", ":x<CR>")
map("n", "<leader>W", ":w!<CR>")
map("n", "<leader>Q", ":q!<CR>")
map("n", "<leader>X", ":x!<CR>")

map("n", "<Leader>d", dropbar.pick, { desc = "Pick symbols in winbar" })
map("n", "[d", dropbar.goto_context_start, { desc = "Go to start of current context" })
map("n", "]d", dropbar.select_next_context, { desc = "Select next context" })

map({ "n", "x" }, "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", { desc = "Add cursor and move down" })
map({ "n", "x" }, "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", { desc = "Add cursor and move up" })
map({ "n", "i", "x" }, "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", { desc = "Add cursor and move up" })
map({ "n", "i", "x" }, "<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", { desc = "Add cursor and move down" })
