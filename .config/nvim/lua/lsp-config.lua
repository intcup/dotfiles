local lsp = require('lspconfig')

lsp.clangd.setup{}
lsp.pyright.setup{}

-- Front End
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lsp.html.setup{ capabilities = capabilities }
lsp.cssls.setup{ capabilities = capabilities }
lsp.eslint.setup{}
