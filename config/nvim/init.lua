require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'lewis6991/gitsigns.nvim'
	use 'mfussenegger/nvim-fzy'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'b0o/mapx.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	use 'EdenEast/nightfox.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
end)
require('gitsigns').setup()
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 10
vim.opt.laststatus = 3

require('indent_blankline').setup{
	show_current_context = true,
	show_current_context_start = true,
}
fzy = require('fzy')
require('nvim-treesitter.configs').setup {
	highlight = {
		enable = true
	}
}

require('lspconfig').clangd.setup{}

-- CMP
local cmp = require('cmp')
cmp.setup{
	mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-Space>"] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true })
	},
	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'buffer'}
	})
}

-- Theme
require('nightfox').setup{
	options = {
		transparent = true
	},
	groups = {
		all = {
			FloatBorder = {	link = 'NormalFloat' }
		}
	}
}
vim.cmd('colorscheme nordfox')

-- Status line
require('lualine').setup{}

-- Keymaps
vim.g.mapleader = " "
gs = package.loaded.gitsigns
local mapx = require'mapx'.setup{}
mapx.nmap('<leader>fe', '<CMD>lua fzy.execute(\'fd\', fzy.sinks.edit_file)<CR>')
mapx.nmap('<leader>gb', '<CMD>lua gs.blame_line()<CR>')
mapx.nmap('<leader>gs', '<CMD>lua gs.stage_hunk()<CR>')
mapx.nmap('<leader>gS', '<CMD>lua gs.stage_buffer()<CR>')
mapx.nmap('<leader>gu', '<CMD>lua gs.undo_stage_hunk()<CR>')
