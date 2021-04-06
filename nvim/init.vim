set number
set laststatus=0
set termguicolors
set updatetime=100

call plug#begin('~/.vim/plugged')
Plug 'adrian5/oceanic-next-vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

let g:oceanic_gutter_like_bg=1
let g:oceanic_transparent_bg=1
color oceanicnext
hi LineNr guifg=#707070 gui=bold
