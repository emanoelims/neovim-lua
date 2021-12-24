local cmd = vim.cmd
cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Theme
  use 'getomni/neovim'
  use 'haishanh/night-owl.vim'
  use 'christianchiarulli/nvcode-color-schemes.vim'

  -- Visual
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Editor
  use 'pbrisbin/vim-mkdir'
  use 'liuchengxu/vista.vim'
  use 'windwp/nvim-autopairs'

  -- Git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- LSP
  use {
    'hrsh7th/nvim-cmp',

    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'neovim/nvim-lspconfig',
    'saadparwaiz1/cmp_luasnip',
    'williamboman/nvim-lsp-installer',
  }
end)
