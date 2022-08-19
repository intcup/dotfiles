vim.cmd [[ packadd nightfox.nvim ]]
require('nightfox').setup {
	options = {
		transparent = true
	},
	groups = {
		all = {
			FloatBorder = { bg = 'bg0' }
		}
	}
}

vim.cmd("colorscheme nordfox")
