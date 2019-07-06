syntax on
set guifont=Monaco:h13
set tabstop=4
set hlsearch
set autoread
set cursorline
set cursorcolumn

set nocompatible
filetype off
set rtp+=/opt/vimbundle/bundle/Vundle.vim
call vundle#begin("/opt/vimbundle/bundle/")
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'iamcco/mathjax-support-for-mkdp'
call vundle#end()
filetype plugin indent on
