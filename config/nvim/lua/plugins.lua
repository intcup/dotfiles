return require('packer').startup(
	function(use)
		use 'wbthomason/packer.nvim'
		use 'b0o/mapx.nvim'
		use {
			'lewis6991/gitsigns.nvim',
			config = function()
				require('gitsigns').setup()
			end,
		}
		use {
			'lukas-reineke/indent-blankline.nvim',
			config = function() require('configs.indent') end
		}
		use {
			'nvim-treesitter/nvim-treesitter',
			config = [[require 'nvim-treesitter.configs'.setup {highlight = { enable = true },}]]
		}
		use {
			'neovim/nvim-lspconfig',
			after = 'nvim-cmp',
			config = function() require('configs.lsp') end
		}
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true },
			config = function() require('lualine').setup() end
		}
		use {
			'hrsh7th/nvim-cmp',
			requires = {
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/cmp-cmdline',
				'hrsh7th/cmp-buffer',
				'L3MON4D3/LuaSnip',
				'onsails/lspkind.nvim',
				'saadparwaiz1/cmp_luasnip',
				'hrsh7th/cmp-nvim-lsp-signature-help'
			},
			config = function()
				require('configs.cmp')
			end
		}
		use {
			'EdenEast/nightfox.nvim',
			config = function() require('configs.nightfox') end
		}
		use {
			'nvim-telescope/telescope.nvim',
			requires = {


				'nvim-lua/plenary.nvim',
				'kyazdani42/nvim-web-devicons'
			},
			config = function() require('configs.telescope') end,
		}
		use {
			'jakewvincent/mkdnflow.nvim'
		}
	end)
