set number
set laststatus=0
set termguicolors

call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
call plug#end()

color OceanicNext
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
