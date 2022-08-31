vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  use { 'wbthomason/packer.nvim' }

  -- Languages
  use { 'neovim/nvim-lspconfig' }
  use { 'mfussenegger/nvim-lint' }

  -- Autocompletion
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'onsails/lspkind-nvim' }

  -- Snippets
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/cmp-vsnip'}

  -- Look and feel
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'folke/zen-mode.nvim' }
  use { 'folke/twilight.nvim' }
  use { 'navarasu/onedark.nvim' }
  use { 'lewis6991/gitsigns.nvim' }

  -- Navigation
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'preservim/tagbar' }
  use { 'tyru/open-browser-github.vim', requires = { 'tyru/open-browser.vim' } }

  -- Debuging
  use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }

end)

require('setup.nvim-tree')
require('setup.nvim-treesitter')
require('setup.telescope')
require('setup.twilight')
require('setup.zen-mode')
require('setup.gitsigns')
require('setup.dap')
require('setup.nvim-lint')
-- todo:
-- daps
-- vim-test
-- vim-rest
