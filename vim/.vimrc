set nocompatible " Required by Vundle.
filetype off " Required by Vundle.

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required.
Plugin 'VundleVim/Vundle.vim'

" Base16 color scheme for vim.
Plugin 'chriskempson/base16-vim'

" End of Vundle configuration section.
call vundle#end()

set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab
set expandtab

set number

set background=dark
colorscheme base16-tomorrow

syntax on
filetype plugin indent on " Required by Vundle.

