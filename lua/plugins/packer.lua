local cmd = vim.cmd
cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'getomni/neovim'
  use 'haishanh/night-owl.vim'
  use 'christianchiarulli/nvcode-color-schemes.vim'

  -- Visual
  use 'nvim-telescope/telescope.nvim'

  use 'liuchengxu/vista.vim'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

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
