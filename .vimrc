" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'ervandew/supertab'      " smart tab-completion using <tab>
"Bundle 'tpope/vim-fugitive'     " git ntegration
"Bundle 'kien/ctrlp.vim'         " fuzzy file search
"Bundle 'godlygeek/tabular'      " align according to a regex

" line Numbers
set number

" auto indentation when making new lines
set autoindent

" replace tabs with an appropriate number of spaces
set expandtab

" delete the correct number of spaces matching a tab
set smarttab

" the number of spaces a tab consists of
set shiftwidth=4

" make spaces that represents tabs act like tabs when deleting etc.
set softtabstop=4

" encoding
set encoding=utf-8
set fileencodings=utf-8,latin-1,chinese

" display commands in the bottom left corner as they are typed
set showcmd

" make the 81th column stand out
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" highlight all matches when searching
set hlsearch

" colours
" let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

