local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function()
      vim.lsp.buf.format({ async = false })
    end, { desc = 'format buffer with LSP' })
  end
end

vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.git' },
  on_attach = on_attach,
})

vim.lsp.config('clangd', {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp' },
  root_markers = { 'compile_commands.json', '.git' },
  on_attach = on_attach,
})

vim.lsp.config('bashls', {
  cmd = { 'bash-language-server', 'start' },
  filetypes = { 'sh', 'bash' },
  root_markers = { '.git' },
  on_attach = on_attach,
})

vim.lsp.config('cssls', {
  cmd = { 'css-language-server', '--stdio' },
  filetypes = { 'css', 'scss', 'less' },
  root_markers = { 'package.json', '.git' },
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('bashls')
vim.lsp.enable('cssls')

vim.api.nvim_create_user_command('Format', function()
  vim.lsp.buf.format({ async = false })
end, {})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.lua", "*.c", "*.cpp" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
