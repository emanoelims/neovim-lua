local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>c', ':nohl<CR>', opts)

map('n', '<leader>s', ':w<CR>', opts)
map('i', '<leader>s', '<C-c>:w<CR>', opts)
