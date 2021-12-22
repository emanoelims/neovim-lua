local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- General
opt.mouse = 'a'
opt.swapfile = false

-- Editor
opt.number = true
opt.linebreak = true
opt.smartcase = true
opt.showmatch = true
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.colorcolumn = '80'
opt.foldmethod = 'marker'

-- Tabs, indent
opt.expandtab = true
