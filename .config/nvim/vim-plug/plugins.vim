call plug#begin('~/.config/nvim/autoload/plugged')

	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	" File Explorer
	Plug 'scrooloose/NERDTree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Autocomplete & language servers
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Sudo support
	Plug 'lambdalisue/suda.vim'
	" Status line
	Plug 'vim-airline/vim-airline'
	" Nerdtree git support
	Plug 'xuyuanp/nerdtree-git-plugin'
	" Dracula theme
	Plug 'dracula/vim', { 'as': 'dracula' }
	call plug#end()
