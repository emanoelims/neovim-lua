local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local cmd = vim.cmd
cmd [[packadd packer.nvim]]

return require 'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Theme
  use 'getomni/neovim'
  use 'haishanh/night-owl.vim'
  use 'christianchiarulli/nvcode-color-schemes.vim'

  -- Visual
  use 'onsails/lspkind-nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Editor
  use 'tpope/vim-sleuth'
  use 'pbrisbin/vim-mkdir'
  use 'tpope/vim-surround'
  use 'Pocco81/TrueZen.nvim'
  use 'liuchengxu/vista.vim'
  use 'nathom/filetype.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'ahmedkhalf/project.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'terrortylor/nvim-comment'
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',

    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'ray-x/lsp_signature.nvim',

    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'jose-elias-alvarez/null-ls.nvim',
    'jose-elias-alvarez/nvim-lsp-ts-utils',
  }
end)
