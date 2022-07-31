" external scripts
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/coc/config.vim
source $HOME/.config/nvim/vim-airline/config.vim

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
set clipboard+=unnamedplus
set nu
" dracula color scheme
syntax on
let g:dracula_colorterm = 0
color dracula
let g:airline_theme='dracula'
