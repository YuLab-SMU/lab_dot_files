syntax on
set guifont=Monaco:h13
set tabstop=4
set hlsearch
set autoread
set cursorline
set cursorcolumn

" bundle conf
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
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jalvesaq/Nvim-R'
call vundle#end()
filetype plugin indent on

" YouComleteMe conf
let g:ycm_use_clangd = 0
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='/opt/vimbundle/bundle/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_complete_in_strings = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_autoclose_preview_window_after_completation=1
let g:ycm_min_num_of_chars_for_completion=3
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Nvim-R conf
let R_assign = 0
let R_objbr_place = 'script,right'

" vim-colorschemes conf
colorscheme wombat

" vim-json conf
let g:vim_json_syntax_conceal = 0

