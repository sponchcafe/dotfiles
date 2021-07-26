" modern viM, instead of 4i
set nocompatible

" Vundle ----------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle ------------------------------------------------
Bundle 'gmarik/vundle'

" github repos of plugins -------------------------------------------------
Bundle 'terryma/vim-smooth-scroll'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sensible'
Plugin 'morhetz/gruvbox'

" github repos of plugins -------------------------------------------------
call vundle#end()            " required
filetype plugin indent on    " required

" Vundle end ------------------------------------------------------------------

syntax on
colorscheme gruvbox
set background=dark

" update time e.g. for gitgutter faster update
set updatetime=400

" edit this file quickly
noremap <F3> :e $MYVIMRC<CR>
noremap <F4> :source $MYVIMRC<CR>

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

" columns 
highlight ColorColumn ctermbg=236
let &colorcolumn=join(range(80,999),",")

" Line numbers
set number
set rnu " relative by default
noremap <c-0> :set rnu!<CR>

" Indentation setup
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" backspae fix
set backspace=2

" adding all subfolders of curdir to the search path
set path+=**

" FileBrowser 
noremap <F2> :Lex 16<CR>

" smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 3)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 3)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 3)<CR>

" Hidden chars visualization
set listchars=space:␣,eol:¬,nbsp:☒,tab:⇥\ 
