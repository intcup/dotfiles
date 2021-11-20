set number
set termguicolors

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

au User lsp_setup call lsp#register_server({'name': 'clangd','cmd': {server_info->['clangd']},'allowlist': ['cpp', 'c'],})

set updatetime=100
color mytheme

let mapleader=" "

nnoremap <Leader>n :NERDTreeToggle <CR>
nnoremap <Leader>x :Explore <CR>
nnoremap <Leader>gu :GitGutterUndoHunk <CR>
nnoremap <Leader>gad :GitGutterStageHunk <CR>
