-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --use({ 'rose-pine/neovim', 
    --as = 'rose-pine',
	--config = function() 
		--vim.cmd('colorscheme rose-pine-moon')
	--end
  --use({ 'marko-cerovac/material.nvim', 
    --as = 'material',
	--config = function() 
		--vim.cmd('colorscheme material')
    --vim.g.material_style = "palenight"
	--end
  --}) --})
--ColorMyPencils()
  use({ 'navarasu/onedark.nvim', 
  	as = 'onedark',
	config = function() 
		vim.cmd('colorscheme onedark')
	end
  }) --})
ColorMyPencils()

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('folke/tokyonight.nvim')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('nvim-lualine/lualine.nvim')
  use('preservim/nerdcommenter')
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
  }
  use('tpope/vim-fugitive')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
  }


end)
