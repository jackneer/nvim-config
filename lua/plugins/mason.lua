local status, mason = pcall(require, 'mason')

if not status then
  return
end

mason.setup({
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗'
    }
  }
})

local status2, lspconfig = pcall(require, 'mason-lspconfig')

if not status2 then
  return
end

lspconfig.setup({
  ensure_installed = { 'lua_ls', 'tsserver' },
  automatic_installation = true,
})

