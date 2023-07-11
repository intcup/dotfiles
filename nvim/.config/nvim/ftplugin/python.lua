require('ts').setup('tree-sitter/tree-sitter-python', 'python', 'main')

vim.lsp.start({
   name = 'pyls',
   cmd = {'pyls'},
})
