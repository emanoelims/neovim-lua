local cmd = vim.cmd
cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'morhetz/gruvbox'
end)
