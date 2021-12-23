local g = vim.g
local cmd = vim.cmd

g.vista_default_executive = 'ctags'
cmd [[let g:vista#renderer#enable_icon = 1]]

cmd [[
  let g:vista#renderer#icons = {
  \   "function": "\u0192",
  \   "variable": "\uf00d",
  \   "prototype": "\uf013",
  \   "macro": "\uf00b",
  \ }
]]
