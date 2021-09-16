"--------------------
" Basics
"--------------------

syntax on                           " Turn on syntax highlighting
filetype off                        " required

set number                          " Show line numbers
set relativenumber                  " Relative numbering
set clipboard=unnamed               " Allow copy and paste between files
set backspace=indent,eol,start      " Make backspace work more intuitively
set noerrorbells visualbell t_vb=   " Disable audible bell because it's annoying.
set mouse+=a                        " Enable mouse support. 
set wildmenu

set showmatch                       " Highlight matching {[()]}
set laststatus=2                    " Show status line at the bottom
set scrolloff=12                    " Keep cursor in the middle of the screen
nmap Q <Nop> 

"--------------------
" Plugins
"--------------------
" Run this from command line to install plugins: vim +PluginInstall +qall

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'lervag/vimtex'
let g:tex_flavor='latex'
set conceallevel=1
let g:tex_conceal='abdmg'

call vundle#end()                   

filetype plugin indent on           " required
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:ycm_autoclose_preview_window_after_completion = 1
"--------------------
" Searching
"--------------------
 
set incsearch                       " Enable searching as you type, rather than waiting till you press enter.
set ignorecase                      " This setting makes search case-insensitive when all characters in the string
set smartcase                       " being searched are lowercase. However, the search becomes case-sensitive if
                                    " it contains any capital letters.
set hlsearch                        " Highlight search matches

"--------------------
" Tabs
"--------------------

set tabstop=4                       " Number of visual spaces per TAB
set softtabstop=4                   " Number of spaces in tab when editing
set shiftwidth=4                    " Insert 4 spaces on a tab
set expandtab                       " Tabs are spaces

set autoindent                      " Enter performs indentation appropriately.

colorscheme gruvbox                 " other nice ones: delphi, darkburn, darth 
