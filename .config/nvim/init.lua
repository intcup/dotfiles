require('packer').startup(function()
	use 'lewis6991/gitsigns.nvim'
	use 'mfussenegger/nvim-fzy'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'b0o/mapx.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	use {
		'nvim-lualine/lualine.nvim',
		config = require('lualine').setup()
	}
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'RRethy/nvim-base16'
end)
