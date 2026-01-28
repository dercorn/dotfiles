" -- Interface --
syntax enable
set noshowmode
set modeline
set background=dark
colorscheme solarized
set mouse=a
set re=0

" -- vim-plug --
call plug#begin()
Plug 'andrewstuart/vim-kubernetes'
Plug 'bling/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'godlygeek/tabular'
Plug 'luochen1990/rainbow'
Plug 'rodjek/vim-puppet'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'
"Plug 'tommcdo/vim-fubitive'
"Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'arcticicestudio/nord-vim'
" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'ray-x/aurora'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

" change background color in insert mode
autocmd InsertEnter * highlight Normal guibg=#3a1a1a  " dark red
autocmd InsertLeave * highlight Normal guibg=NONE    " reset

" If the terminal supports true color
if exists('+termguicolors')
  set termguicolors
endif

" -- darker relative line numbers --
highlight LineNr ctermfg=245 guifg=#767676  " dim color for non-active line numbers
highlight CursorLineNr ctermfg=229 guifg=#fabd2f cterm=bold gui=bold  " current line (brighter)

" -- enable Jenkins syntax highlighting --
au BufNewFile,BufRead Jenkinsfile setf groovy

" -- Tabs --
set nocompatible " be iMproved
"filetype off " required!
set number
set relativenumber
set cursorline
hi CursorLine cterm=none ctermbg=238 ctermfg=NONE
set cursorcolumn
highlight CursorColumn ctermbg=Black
set autoindent
set smartindent
"set laststatus=2
set encoding=utf-8
set t_Co=256

" -- Auto-reload .vimrc --
autocmd bufwritepost .vimrc source $MYVIMRC

" -- Tabs --
set expandtab               " Do insert spaces for tabs
set tabstop=2               " How many spaces should be displayed as one tab
set shiftwidth=0            " How many spaces should be inserted as one tab; If set to '0', it uses tabstop value
"filetype plugin indent on  " Different behaviour based on filetype

" -- better indentation for YAML files --
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" -- make indentations more visible
let g:indentLine_char = '⦙'

" -- Search --
set ignorecase              " Ignore case on matching
set smartcase               " But only when search is all lower case
set incsearch               " Incremental searching
set hlsearch                " Highlight matches
nnoremap n nzz              " Focus highlight in the middle of the screen
nnoremap N Nzz              " Focus highlight in the middle of the screen
nnoremap <CR> :noh<CR><CR>  " Clear search with Enter
" Show meta chars
set listchars=eol:¬,tab:→·,trail:~,extends:>,precedes:<,nbsp:☂
set list

" -- Rainbow Parentheses --
"let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:airline_powerline_fonts = 1
