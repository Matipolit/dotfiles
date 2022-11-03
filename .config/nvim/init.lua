require('plugins')
require('fileTree')
require('servers')
require('autocomplete')
require('lualineConfig')
require('treesitterConfig')
require('autoTagPair')

vim.opt.guifont = { "JetBrainsMono Nerd Font" }
vim.cmd[[colorscheme dracula]]
vim.cmd[[
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent
set clipboard+=unnamedplus
set nu
]]
