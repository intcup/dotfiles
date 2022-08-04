return require('packer').startup(
function(use)
	use 'wbthomason/packer.nvim'
	use 'b0o/mapx.nvim'
	use 'lewis6991/gitsigns.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('indent-config')
		end
	}
	use {
		'nvim-treesitter/nvim-treesitter'
	}
	use {
		'neovim/nvim-lspconfig',
		config = [[ require('lsp-config') ]]
	}
	use {
		'nvim-lualine/lualine.nvim',
		config = function() require('lualine').setup() end,
	}
	use 'onsails/lspkind.nvim'
	use {
		'hrsh7th/nvim-cmp',
		config = function() require('cmp-config') end
	}
	use {'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'}
	use {'hrsh7th/cmp-cmdline', after = 'nvim-cmp'}
	use {'hrsh7th/cmp-buffer', after = 'nvim-cmp'}
	use {'L3MON4D3/LuaSnip', after = 'nvim-cmp'}
	use {'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp'}
	use {
		'EdenEast/nightfox.nvim',
		config = function() require('nightfox-config') end
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		config = function() require('telescope-config') end,
		requires = {
			{'nvim-lua/plenary.nvim'},
			{'nvim-telescope/telescope-fzy-native.nvim'}
		}
	}
	use {
		'norcalli/nvim-colorizer.lua',
		config = function() require('colorizer').setup(nil, {css = true}) end
	}
end)
