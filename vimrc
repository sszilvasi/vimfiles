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
Bundle 'klen/python-mode'
Bundle 'SirVer/ultisnips'

"Bundle 'Source-Explorer-srcexpl.vim'
"Bundle 'wesleyche/SrcExpl'
Bundle 'taglist.vim'



" General
syntax on
filetype plugin indent on
set number

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
set cursorline

" <C-l> to clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR>
inoremap <C-L> <C-O>:nohls<CR>

nmap <F6> :TlistToggle<CR>
map <F8> :execute '!ctest -V -R ' . expand('%:t:r')<CR>
map <F9> :execute '!gr_plot_iq ../apps/out.dat -B 10'
map <F10> :execute '!make -j 4 && make install'<CR>

map <C-S-j> <Esc>/<+<CR><Esc>cf>
map <C-S-j> <Esc>/<+<CR><Esc>cf>

"nnoremap <leader>b :BufExplorer<cr>
map <C-S-b> <ESC>:BufExplorer<CR>

"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set listchars=tab:·\ ,eol:¬,extends:>,precedes:<
set nolist

let g:pymode_lint_write = 0

augroup ft_python
    au!
    au FileType python setlocal omnifunc=pysmell#Complete
    au FileType python setlocal sw=4 sts=4 ts=4
    au FileType python set textwidth=79
    au Filetype python setlocal foldmethod=expr
augroup END


