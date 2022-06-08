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
end)
require('gitsigns').setup()
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 10

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

servers = {
	'clangd'
}
for _, lsp in pairs(servers) do
	require('lspconfig')[lsp].setup {}
end

-- Theme
require('nightfox').setup{
	options = {
		transparent = true
	},
	groups = {
		all = {
			FloatBorder = {	bg = '#131a24' }
		}
	}
}
vim.cmd('colorscheme nightfox')

-- Status line
require('lualine').setup{
	theme = 'material'
}

-- Keymaps
vim.g.mapleader = " "
gs = package.loaded.gitsigns
local mapx = require'mapx'.setup{}
mapx.nmap('<leader>fe', function() fzy.execute('fd', fzy.sinks.edit_file) end)
mapx.nmap('<leader>gb', function() gs.blame_line() end)
mapx.nmap('<leader>gs', function() gs.stage_hunk() end)
mapx.nmap('<leader>gS', function() gs.stage_buffer() end)
