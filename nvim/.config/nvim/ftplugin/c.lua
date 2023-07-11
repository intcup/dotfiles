require('ts').setup('tree-sitter/tree-sitter-c', "c", 'v0.20.2', false)

vim.lsp.start({
   name = 'clangd',
   cmd = {'clangd'},
})
