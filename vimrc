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
Bundle 'markabe/bufexplorer'
Bundle 'scrooloose/nerdcommenter'

Bundle 'taglist.vim'


" General
syntax on
filetype plugin indent on

" Status line
set ruler
set showcmd

" Indentaion
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab " replace tabs with spaces

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

" Mappings
let mapleader = ","
let maplocalleader = "\\"

nmap <silent> <Leader>ev :e ~/.vim/vimrc<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>


"------------------- Experimental ------------------------
"
" <c-l> to clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

nnoremap <leader>b :BufExplorer<cr>

"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:·\ ,eol:¬,extends:>,precedes:<
set nolist
