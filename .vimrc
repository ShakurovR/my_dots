
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set ic

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'kien/ctrlp.vim'
Plug 'valloric/youcompleteme'
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'ayu-theme/ayu-vim'
Plug 'valloric/youcompleteme'
Plug 'tell-k/vim-autopep8'

call plug#end()


set termguicolors
set background=dark
let ayucolor="dark"     
colorscheme  ayu
let g:Hexokinase_highlighters = ['backgroundfull']
set colorcolumn=110
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
