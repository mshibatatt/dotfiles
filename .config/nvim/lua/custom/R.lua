-- R.lua 
-- setup for R

-- TODO; debug set_keymao
vim.api.nvim_buf_set_keymap(0, 'n', '<C-CR>', '<Plug>RDSendLine', {})
vim.api.nvim_buf_set_keymap(0, 'i', '<C-CR>', '<Plug>RDSendLine', {})
vim.api.nvim_buf_set_keymap(0, 'v', '<C-CR>', '<Plug>RDSendLine', {})

-- disable shortcut of `<-`
vim.g.R_assign = 0
