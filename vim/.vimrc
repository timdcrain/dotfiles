" Required setup for Vundle.
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required.
Plugin 'VundleVim/Vundle.vim'

" Base16 color scheme for vim.
Plugin 'chriskempson/base16-vim'

" Rust official syntax plugin.
Plugin 'rust-lang/rust.vim'

call vundle#end()

" Filetype-specific features.
syntax on
filetype plugin indent on

" Color scheme. This must come after the syntax and
" filetype lines so that the hi commands work.
set background=dark
colorscheme base16-tomorrow
hi LineNr ctermbg=00
hi SpecialKey ctermfg=11

" Expand tabs to four spaces.
set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab
set expandtab

" Show special characters for whitespace.
set listchars=tab:→\ ,trail:·
set list

" General settings.
set number
set backspace=start,eol,indent
set encoding=utf-8

" Disable arrow keys.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Bind ctrl+<hjkl> to move around the windows,
" instead of ctrl+w+<hjkl>.
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
