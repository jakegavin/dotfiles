set nocompatible
filetype plugin indent on

" Relative line numbers
set number relativenumber

" Indent with two spaces 
set expandtab
set shiftwidth=2
set softtabstop=2

" Remove scrollbars in MacVim
set guioptions=

" Set leader to space
let mapleader=" "

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Airline
" Use powerline font to get arrows
let g:airline_powerline_fonts = 1 
set guifont=Monaco\ for\ Powerline:h13

" ALE
" Fix Javascript with Prettier
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1


" jk to escape
inoremap jk <ESC>

" leader leader to save
nmap <leader><leader> :w<CR>
 
" CtrlP
let g:ctrlp_map = '<leader>t'
" Skip git ignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Window navigation with Ctrl-direction
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>wh :wincmd h<CR>
map <leader>wj :wincmd j<CR>
map <leader>wk :wincmd k<CR>
map <leader>wl :wincmd l<CR>

" Change cursor based on mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Nerd Commenter
let g:NERDSpaceDelims = 1

" NERDTree
nmap <leader>ne :NERDTreeToggle<CR>


" GitGutter
" Speed up update time so changes show up in gutter faster
set updatetime=100
" Always show column
set signcolumn=yes



" Move Lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv



packadd! onedark.vim
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark
let g:airline_theme='onedark'
