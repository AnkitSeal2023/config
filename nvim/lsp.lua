local lspconfig = require 'lspconfig'

-- Ensure cmp can talk to LSP
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Example for Lua LSP
lspconfig.lua_ls.setup {
  capabilities = capabilities,
}
lspconfig.gopls.setup {
  capabilities = capabilities,
}
