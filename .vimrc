" -- Interface --
syntax enable
set noshowmode
set modeline
"set background=dark
colorscheme solarized
"colorscheme default
set mouse=a
set re=0

" -- vim-plug --
call plug#begin()
Plug 'andrewstuart/vim-kubernetes'
Plug 'bling/vim-airline'
let g:airline_powerline_fonts = 1
Plug 'bronson/vim-trailing-whitespace'
Plug 'godlygeek/tabular'
Plug 'luochen1990/rainbow'
Plug 'rodjek/vim-puppet'
Plug 'tpope/vim-fugitive'
"Plug 'tommcdo/vim-fubitive'
"Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()


" -- enable Jenkins syntax highlighting --
au BufNewFile,BufRead Jenkinsfile setf groovy

" -- Tabs --
set nocompatible " be iMproved
"filetype off " required!
set number
set relativenumber
set cursorcolumn
"set autoindent
"set smartindent
"set laststatus=2
"set encoding=utf-8
"set t_Co=256

" -- Auto-reload .vimrc --
autocmd bufwritepost .vimrc source $MYVIMRC

" -- Tabs --
set expandtab               " Do insert spaces for tabs
set tabstop=2               " How many spaces should be displayed as one tab
set shiftwidth=0            " How many spaces should be inserted as one tab; If set to '0', it uses tabstop value
"filetype plugin indent on  " Different behaviour based on filetype

" -- Search --
set ignorecase              " Ignore case on matching
set smartcase               " But only when search is all lower case
set incsearch               " Incremental searching
set hlsearch                " Highlight matches
nnoremap n nzz              " Focus highlight in the middle of the screen
nnoremap N Nzz              " Focus highlight in the middle of the screen
nnoremap <CR> :noh<CR><CR>  " Clear search with Enter
" Show meta chars
set list
set listchars=eol:¬,tab:··,trail:~,extends:>,precedes:<,nbsp:☂

" -- Rainbow Parentheses --
"let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

