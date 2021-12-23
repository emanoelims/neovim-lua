local cmd = vim.cmd
cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'morhetz/gruvbox'
  use 'liuchengxu/vista.vim'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
  }
end)
