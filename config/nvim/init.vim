set number
set termguicolors
set updatetime=100
set shiftwidth=4
set tabstop=4
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'airblade/vim-gitgutter'

call plug#end()

au User lsp_setup call lsp#register_server({'name': 'clangd','cmd': {server_info->['clangd']},'allowlist': ['cpp', 'c'],})

color mytheme

let mapleader=" "

nnoremap <Leader>x :Explore <CR>

lua << EOF
require("lsp")
EOF

set statusline=%f%=%y\ %l:%c
