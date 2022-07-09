require('packer').startup(function()
	use 'lewis6991/gitsigns.nvim'
	use 'mfussenegger/nvim-fzy'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'b0o/mapx.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	use 'nvim-lualine/lualine.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'RRethy/nvim-base16'
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
	},
	indent = {
		enable = true
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
}

--LSP
require('lspconfig').clangd.setup{}
require('lspconfig').phan.setup{}

-- CMP
local cmp = require('cmp')
cmp.setup{
	snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
	mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-Space>'] = cmp.mapping.confirm({ select = true })
	},
	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'buffer'}
	})
}

-- Status line
require('lualine').setup{}

-- Keymaps
vim.g.mapleader = " "
gs = package.loaded.gitsigns
local mapx = require'mapx'.setup{}
mapx.nmap('<leader>fe', '<CMD>lua fzy.execute(\'fd -t f\', fzy.sinks.edit_file)<CR>')
mapx.nmap('<leader>fg', '<CMD>lua fzy.actions.buf_lines()<CR>')

mapx.nmap('<leader>gb', '<CMD>lua gs.blame_line()<CR>')
mapx.nmap('<leader>gs', '<CMD>lua gs.stage_hunk()<CR>')
mapx.nmap('<leader>gS', '<CMD>lua gs.stage_buffer()<CR>')
mapx.nmap('<leader>gu', '<CMD>lua gs.undo_stage_hunk()<CR>')
