set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set ai                  " auto indenting 
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
set background=dark	" use bright text color
set laststatus=2	" set status line
set nu			" display line number
set fileencodings=utf-8 " use UTF-8 as default encoding
set showmatch		" Cursor shows matching ) and }
set cursorline

let g:solarized_termtrans = 1 " This gets rid of the grey background
colorscheme solarized
let g:solarized_termcolors=256  

" Set highlight for cursor line
hi Cursorline term=bold cterm=bold guibg=grey40

let g:airline_theme="solarized"
let g:airline_solarized_bg='dark' " To use the solarized dark
let g:airline_powerline_fonts = 1 " enable powerline fonts
