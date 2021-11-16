set number
set termguicolors

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'

call plug#end()

au User lsp_setup call lsp#register_server({'name': 'clangd','cmd': {server_info->['clangd']},'allowlist': ['cpp', 'c'],})

set updatetime=100
let g:material_theme_style = 'darker'
colorscheme material
highlight Normal guibg=none
highlight SignColumn guibg=none

let mapleader=" "
let g:lightline = { 'colorscheme': 'material_vim' }

nnoremap <Leader>n :NERDTreeToggle <CR>
nnoremap <Leader>x :Explore <CR>
nnoremap <Leader>gu :GitGutterUndoHunk <CR>
nnoremap <Leader>gad :GitGutterStageHunk <CR>
