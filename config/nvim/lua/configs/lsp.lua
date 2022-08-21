local servers = {
	'clangd',
	'pyright',
	'html',
	'cssls',
	'eslint',
	'sumneko_lua',
	'marksman',
	'zk'
}

-- Front End
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local lspconfig = require('lspconfig')

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		capabilities = capabilities,
	}
end
