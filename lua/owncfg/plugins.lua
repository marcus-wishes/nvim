-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- dev icon
  use 'kyazdani42/nvim-web-devicons'

  -- material theme
  use 'marko-cerovac/material.nvim'

  -- treesitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  -- lspconfig
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  -- plenary is required fomr null-ls
  use 'nvim-lua/plenary.nvim'

  -- null-ls
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovims built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  
  -- mason
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

    -- file system tree .. replaced by neo-tree
  --[[ use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }
  --]]
  -- neo-tree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- lualine status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  
  -- github copilot
  -- use 'github/copilot.vim'
  -- then:
  use {
    "zbirenbaum/copilot.lua",
	-- requires = { 'github/copilot.vim'},
    event = {"VimEnter"},
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({
		  cmp = {
			enabled = true,
			method = "getCompletionsCycle",
		  },
		  panel = {
			enabled = true,
		  }
		})
      end, 100)
    end,
  }

  -- use copilot as cmp source:
  use {
    "zbirenbaum/copilot-cmp",
    module = "copilot_cmp",
  }
 -- autotag and autopairs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- trouble plugin which shows lines making problems
  use { 
	  'folke/trouble.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons' },
  }
  
  
  -- colorizer (simply shows the color as background of a color definition)
  use 'norcalli/nvim-colorizer.lua'

  -- buffer/tabline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}


  -- floating goto window for goto-line
  use {
	  'rmagatti/goto-preview',
	  requires = { 'nvim-telescope/telescope.nvim'}
  }

  -- show indentation guides
  use 'lukas-reineke/indent-blankline.nvim'

  -- which-key (keybindings) popup
  use 'folke/which-key.nvim'

end)
