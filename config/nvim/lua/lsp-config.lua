local servers = {
	'clangd',
	'pyright',
	'html',
	'cssls',
	'eslint',
	'sumneko_lua',
	'marksman'
}

require('mapx').nmap('<Leader>=', '<cmd>lua vim.lsp.buf.formatting_sync()<CR>')
vim.api.nvim_create_autocmd({ 'InsertLeave', 'BufWrite' }, {
	pattern = { '*' },
	command = 'lua vim.lsp.buf.formatting_sync()',
})

-- Front End
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local lspconfig = require('lspconfig')

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		capabilities = capabilities,
	}
end
