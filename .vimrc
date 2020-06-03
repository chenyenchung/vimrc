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


" Set rainbow parenthesis

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Coc.nvim specifics

" " Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
 

" Lightline theme
let g:lightline = {
            \ 'colorscheme': 'solarized',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'cocstatus': 'coc#status'
            \ },
            \ }



" General settings
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
" 
set hidden      " Hide instead of close buffers
set cmdheight=2 " Give more space for displaying messages.
set updatetime=300 " Reduce delay
set shortmess+=c
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

