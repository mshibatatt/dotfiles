-- Python.lua
-- install lsp
require('mason-lspconfig').setup({
  ensure_installed = {
    'pylsp',
    'ruff'
  }
})
