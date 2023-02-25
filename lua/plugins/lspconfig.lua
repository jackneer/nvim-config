local status, lspconfig = pcall(require, 'lspconfig')
if not status then
  return
end

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  local map = require('utils').map

  map('n', 'gD', vim.lsp.buf.declaration, bufopts)
  map('n', 'gd', vim.lsp.buf.definition, bufopts)
  
end

lspconfig.tsserver.setup({
  on_attach = on_attache
})
