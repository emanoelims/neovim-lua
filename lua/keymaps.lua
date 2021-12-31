local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>c', ':nohl<CR>', opts)

map('n', '<leader>s', ':w<CR>', opts)
map('i', '<leader>s', '<C-c>:w<CR>', opts)

map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

map('n', '<leader>q', ':qa!<CR>', opts)

map('n', '<C-m>', ':Vista!!<CR>', opts)
