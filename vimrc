set nocompatible

call plug#begin('~/.vim/plugged')
" Relative line numbers only in current buffer
Plug 'jeffkreeftmeijer/vim-numbertoggle'
call plug#end()

syntax on
filetype plugin indent on

" Relative line numbers
set relativenumber

" Set leader to space
let mapleader=" "

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" jk to escape
inoremap jk <ESC>

" Window navigation with Ctrl-direction
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Change cursor based on mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
