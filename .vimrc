set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display inclomplete commands
filetype plugin indent on       " load file type plugins + indentation
set nu                          " show line numbers

set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " size of tab
set expandtab                   " spaces instead tabs

" For programing
au BufRead,BufNewFile *.rb,*.rhtml setlocal shiftwidth=2
au BufRead,BufNewFile *.rb,*.rhtml setlocal softtabstop=2
" Remove trailing spaces on save
au FileType c,cpp,css,go,html,javascript,php,python,ruby au BufWritePre <buffer> :%s/\s\+$//e
au BufRead,BufNewFile *.go setlocal noet

set backspace=indent,eol,start  " backspace through everything in insert mode

set hlsearch			        " highlight matches
set incsearch			        " incremental search
set ignorecase
set smartcase

" For gvim
if has('gui_running')
    set go-=T           " hide the toolbar
    set cul             " highlight the current line
endif

