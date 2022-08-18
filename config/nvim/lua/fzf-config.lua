require('fzf-lua').setup {
	winopts = {
		border = 'single',
		hl = {
			normal = 'NormalFloat',
			border = 'FloatBorder'
		},
		preview = {
			horizontal = 'right:40%'
		}
	}
}

local mapx = require('mapx')

mapx.nnoremap('<Leader>ff', '<CMD>FzfLua files<CR>')
