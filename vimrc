" Author: Sandor Szilvasi
" Source: http://github.com/sszilvasi/dotfiles/vimrc

" TODO: Comments

set nocompatible

" Bundles
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'

Bundle 'taglist.vim'


" General
syntax on

" Status line
set ruler
set showcmd

" Indentaion
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" Search
set wrapscan
set ignorecase
set smartcase
set hlsearch
set incsearch

" Buffer
set hidden " Allow unsaved buffers to go in the background w/o warning
nmap <A-Right> :bn<CR>
nmap <A-Left> :bp<CR>

" Mouse
set mouse=a
set ttymouse=xterm2

" Edit the vimrc file
let mapleader = ","
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

