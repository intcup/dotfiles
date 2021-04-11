set number
set laststatus=0
set termguicolors
set updatetime=100

call plug#begin('~/.vim/plugged')
Plug 'adrian5/oceanic-next-vim'
Plug 'airblade/vim-gitgutter'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'liuchengxu/vista.vim'
call plug#end()

let g:LanguageClient_serverCommands = {
	\ 'python' : ['pyls'],
	\ 'cpp' : ['clangd']
	\}

let g:LanguageClient_diagnosticsDisplay = {
			\ 1: {
			\ "name": "Error",
			\ "texthl": "LanguageClientError",
			\ "signText": "!",
			\ "signTexthl": "LanguageClientErrorSign",
			\ "virtualTexthl": "Error",
			\ }
			\ ,
			\ 2: {
			\ "name": "Warning",
			\ "texthl": "LanguageClientWarning",
			\ "signText": "?",
			\ "signTexthl": "LanguageClientWarningSign",
			\ "virtualTexthl": "Todo",
			\ },
			\         3: {
			\ "name": "Information",
			\ "texthl": "LanguageClientInfo",
			\ "signText": "¡",
			\ "signTexthl": "LanguageClientInfoSign",
			\ "virtualTexthl": "Todo",
			\ },
			\ 4: {
			\ "name": "Hint",
			\ "texthl": "LanguageClientInfo",
			\ "signText": "-",
			\ "signTexthl": "LanguageClientInfoSign",
			\ "virtualTexthl": "Todo",
			\ },
		\ }


let g:deoplete#enable_at_startup = 1

let g:oceanic_gutter_like_bg=1
let g:oceanic_transparent_bg=1
color oceanicnext
hi LineNr guifg=#707070 gui=bold

source ~/.config/nvim/controls.vim
source ~/.config/nvim/lsp_config.vim
