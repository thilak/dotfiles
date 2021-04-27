set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search

set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set cc=120                  " set an 120 column border for good coding style

set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions

set mouse=v                 " middle-click paste with 
set mouse=a                 " enable mouse click

set clipboard=unnamedplus   " using system clipboard
" set cursorline              " highlight current cursorline
set ttyfast                 " speed up scrolling in Vim
" set backupdir=~/.cache/vim  " directory to store backup files.

filetype plugin indent on   " allow auto-indenting depending on file type
filetype plugin on
syntax on                   " syntax highlighting

" color desert

" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
