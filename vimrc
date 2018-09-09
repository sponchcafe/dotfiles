" modern viM, instead of 4i
set nocompatible

" Enable pathogen
execute pathogen#infect()

" plugin setup
filetype plugin indent on
syntax on

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" syntax highlighting
syntax enable
" filetype recognotion
filetype plugin on

imap jj <Esc>

" Line numbers
set number
set rnu

" Indentation setup
set expandtab
set shiftwidth=4
set softtabstop=4

" backspae fix
set backspace=2

" adding all subfolders of curdir to the search path
set path+=**

" wild menu s

" smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 3)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 3)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 3)<CR>
