-- R.lua 
-- setup for R
require("cmp_r").setup({ })
require('mason-lspconfig').setup({
  ensure_installed = {
    'r-languageserver',
  }
})
-- indent size is 2 in R
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
