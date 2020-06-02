set nocompatible              " be iMproved, required
syntax enable

" Vim-plug settings
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'lifepillar/vim-solarized8'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()


" Theme related
set termguicolors
set background=light	" use bright text color
colorscheme solarized8_high

" Lightline theme
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
 
" Set rainbow parenthesis
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
 
" General settings
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
" 
set tabstop=4		" tab = 4 spaces
set shiftwidth=4    " > with 4 spaces
set expandtab		" expand tab as spaces
set ai                  " auto indenting 
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
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

