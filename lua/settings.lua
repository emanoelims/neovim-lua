local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- Leader
g.mapleader = ','

-- General
opt.mouse = 'a'
opt.swapfile = false

-- Theme
opt.background = 'dark'
opt.termguicolors = true
cmd [[colorscheme omni]]

g.nvcode_termcolors=256

-- Editor
opt.number = true
opt.hidden = true
opt.history = 100
opt.synmaxcol = 240
opt.linebreak = true
opt.smartcase = true
opt.showmode = false
opt.showmatch = true
opt.lazyredraw = true
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.colorcolumn = '80'
opt.foldmethod = 'marker'

-- Tabs, indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]
