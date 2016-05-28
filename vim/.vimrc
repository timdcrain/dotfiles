set nocompatible " Required by Vundle.
filetype off " Required by Vundle.

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required.
Plugin 'VundleVim/Vundle.vim'

" End of Vundle configuration section.
call vundle#end()
filetype plugin indent on " Required by Vundle.

set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab
set expandtab

set number

set background=dark

syntax on
