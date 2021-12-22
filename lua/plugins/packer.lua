local cmd = vim.cmd
cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-tree.lua'
  use 'lukas-reineke/indent-blankline.nvim'
end)
