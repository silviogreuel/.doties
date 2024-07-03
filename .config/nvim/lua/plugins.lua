vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  use { 'wbthomason/packer.nvim' }

  -- Languages
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'neovim/nvim-lspconfig' }

  use { 'fatih/vim-go' }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'mfussenegger/nvim-lint' }
  -- use { 'mhartington/formatter.nvim' }

  -- Autocompletion
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'onsails/lspkind-nvim' }
  -- use { 'github/copilot.vim' }
  use { 'zbirenbaum/copilot.lua' }

  -- Remote
  use { 'kristijanhusak/vim-dadbod-ui' }
  use { 'tpope/vim-dadbod'}
  use { 'kristijanhusak/vim-dadbod-completion'}
  use { 'pbogut/vim-dadbod-ssh' }

  -- Snippets
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/cmp-vsnip'}

  -- Look and feel
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-treesitter/playground' }
  use { 'folke/zen-mode.nvim' }
  use { 'folke/twilight.nvim' }
  use { 'navarasu/onedark.nvim' }
  use { 'lewis6991/gitsigns.nvim' }

  -- Navigation
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'preservim/tagbar' }
  use { 'tyru/open-browser-github.vim', requires = { 'tyru/open-browser.vim' } }
  use { 'tpope/vim-projectionist' }

  -- Debuging
  use { 'mfussenegger/nvim-dap' }
  use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }

  -- Misc
  use { "nvim-neotest/nvim-nio" }

  -- Testing
  use {
    'nvim-neotest/neotest',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'antoinemadec/FixCursorHold.nvim',
  -- adapters
      'jfpedroza/neotest-elixir',
      'marilari88/neotest-vitest',


    }
  }

end)

require('setup.nvim-tree')
require('setup.nvim-treesitter')
require('setup.telescope')
require('setup.twilight')
require('setup.zen-mode')
require('setup.gitsigns')
require('setup.dap')
require('setup.nvim-lint')
require('setup.null-ls')
require('setup.neotest')
require('setup.cmp')
require('setup.copilot')
-- todo:
-- daps
-- vim-test
-- vim-rest
