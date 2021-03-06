" Plugins through Vundle
set nocompatible " Required by Vundle
filetype off " Required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'USER/PROJ' from github
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dimasg/vim-mark'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mbbill/undotree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'ap/vim-buftabline'
Plugin 'michaelzhou999/vmark'

" Plugin 'NAME' from vim-scripts.org
Plugin 'snipMate'
Plugin 'molokai'
Plugin 'delimitMate.vim'
Plugin 'SuperTab--Van-Dewoestine'
Plugin 'verilog_systemverilog.vim'

" Plugin 'file://path'

call vundle#end()
filetype plugin indent on " Required

" set settings
set history=128
"set autoload
set nobackup
set nowb
set noswapfile
set noerrorbells
set hidden
set autochdir
set encoding=utf8

" set gui features
set ruler
set showmatch
set showcmd
set nu
set showmode
set foldcolumn=1
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" set gui
syntax enable
colorscheme desert
colorscheme molokai
set guioptions-=T
set guioptions-=e
set lines=100
set columns=80

set wildmenu
set wildmode=list:longest
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.svn/*

" set behaviors
set ignorecase
set smartcase
set incsearch
set hlsearch
set magic

set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

set ai
set si
set nowrap

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" set leaderkey and shortcuts

" it's a good idea to use ; instead of : to enter command
nnoremap ; :

set splitbelow
set splitright

nmap <C-s> :w<cr>
map 0 ^
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

nnoremap bn :bnext<cr>
nnoremap bp :bprevious<cr>

" Plugin settings shortcuts
" NerdTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\~$','\.o$','\.pyc$','__pycache__']
"map <leader>nt :NERDTreeToggle<cr>
map <F3> :NERDTreeToggle<cr>
map nf :NERDTreeFind<cr>

" vim-mark
nmap mm <Plug>MarkSet
nmap mn <Plug>MarkSearchCurrentNext
nmap mp <Plug>MarkSearchCurrentPrev

" Undotree
nnoremap <F4> :UndotreeToggle<cr>

" rainbow_parentheses
" always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" nerdcommenter
let g:NERDSpaceDelims = 1
map cc <Plug>NERDCommenterComment
map cu <Plug>NERDCommenterUncomment
map ci <Plug>NERDCommenterInvert

" snipMate
let g:snips_author = 'YOUR NAME'

" vmark
nmap <F2>       <Plug>VMarkToggle<cr>
nmap <C-F2>     <Plug>VMarkNext<cr>
nmap <S-F2>     <Plug>VMarkPrevious<cr>

" supertab
" use C-TAB to indent
let g:SuperTabMappingForward = '<C-p>'
let g:SuperTabMappingBackward = '<C-n>'
