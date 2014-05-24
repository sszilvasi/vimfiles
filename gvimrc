" Author: Sandor Szilvasi
" Source: http://github.com/sszilvasi/vimfiles/gvimrc

" Remove toolbar
set guioptions-=T " remove toolbar
set guioptions-=m " remove menu bar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Font
if has("unix")
    set guifont=Ubuntu\ Mono\ 13
    "set guifont=Inconsolata\ 11
    "set guifont=DejaVu\ Sans\ Mono\ 11
    "set guifont=Courier\ New\ 11
endif

if has("win32")
    set guifont=Consolas\ 14
endif

if has("mac")
    " Monaco
    set guifont=Menlo:h15
    "set guifont=Monaco:h15
endif

" Color scheme
colo jellybeans
":colo railscasts
":colo twilight
":colo desert

