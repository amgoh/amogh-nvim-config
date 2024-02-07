local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',

    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'neovim/nvim-lspconfig' -- LSP
  use 'onsails/lspkind-nvim'  -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'    -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'  -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'      -- Completion
  use 'L3MON4D3/LuaSnip'      -- Snippet Engine
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'simrat39/rust-tools.nvim'

  use 'rebelot/kanagawa.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
end)
