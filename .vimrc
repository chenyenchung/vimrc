" Vundle-related settings
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" Theme related
let g:solarized_termtrans = 1 " This gets rid of the grey background
colorscheme solarized
let g:solarized_termcolors=256  

" Set highlight for cursor line
hi Cursorline term=bold cterm=bold guibg=grey40

let g:airline_theme="solarized"
let g:airline_solarized_bg='dark' " To use the solarized dark
let g:airline_powerline_fonts = 1 " enable powerline fonts

" General settings
syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set tabstop=4		" tab = 4 spaces
set shiftwidth=4    " > with 4 spaces
set expandtab		" expand tab as spaces
set ai                  " auto indenting 
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
set background=dark	" use bright text color
set laststatus=2	" set status line
set number		" display line number
set fileencodings=utf-8 " use UTF-8 as default encoding
set showmatch		" Cursor shows matching ) and }
set cursorline		" Highlight current line
set wildmenu		" Enable tab-complete when using :find
set path+=**		" Enable recursive :find under current folder

" Filetype txt/md
autocmd FileType markdown set nonu
autocmd FileType markdown set spell
autocmd FileType markdown set noshowmatch
autocmd FileType markdown set wrap
autocmd FileType markdown set linebreak
autocmd FileType text set nonu
autocmd FileType text set spell
autocmd FileType text set noshowmatch
autocmd FileType text set wrap
autocmd FileType text set linebreak

