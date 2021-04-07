set number
set laststatus=0
set termguicolors
set updatetime=100

call plug#begin('~/.vim/plugged')
Plug 'adrian5/oceanic-next-vim'
Plug 'airblade/vim-gitgutter'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

let g:oceanic_gutter_like_bg=1
let g:oceanic_transparent_bg=1
color oceanicnext
hi LineNr guifg=#707070 gui=bold

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif
