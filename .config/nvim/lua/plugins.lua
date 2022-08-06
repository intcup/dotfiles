return require('packer').startup(
	function(use)
		use 'wbthomason/packer.nvim'
		use 'b0o/mapx.nvim'
		use {
			'lewis6991/gitsigns.nvim',
			config = function()
				require('gitsigns').setup()
			end
		}
		use {
			'mfussenegger/nvim-fzy',
			config = function()
				require('fzy-config')
			end
		}
		use {
			'lukas-reineke/indent-blankline.nvim',
			config = function()
				require('indent-config')
			end
		}
		use {
			'nvim-treesitter/nvim-treesitter',
			config = function()
				require 'nvim-treesitter.configs'.setup {
					highlight = { enable = true },
				}
			end
		}
		use {
			'neovim/nvim-lspconfig',
			after = 'nvim-cmp',
			config = function()
				require('lsp-config')
			end
		}
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true },
			config = function()
				require('lualine').setup()
			end
		}
		use {
			'hrsh7th/nvim-cmp',
			requires = {
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/cmp-cmdline',
				'hrsh7th/cmp-buffer',
				'L3MON4D3/LuaSnip',
				'onsails/lspkind.nvim',
				'saadparwaiz1/cmp_luasnip'
			},
			config = function()
				require('cmp-config')
			end
		}
		use {
			'EdenEast/nightfox.nvim',
			config = function()
				require('nightfox-config')
			end
		}
	end)
