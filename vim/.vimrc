" Required setup for Vundle.
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

" Filetype-specific features.
syntax on
filetype plugin indent on

" Color scheme. This must come after the syntax and
" filetype lines so that the hi commands work.
set background=dark
colorscheme base16-tomorrow
hi LineNr ctermbg=00
hi SignColumn ctermbg=00
hi SpecialKey ctermfg=11

" Expand tabs to four spaces.
set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab
set expandtab

" Show special characters for whitespace.
set listchars=tab:—\—,trail:·
set list

" Syntastic settings.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Git gutter settings.
hi GitGutterAdd ctermbg=00
hi GitGutterChange ctermbg=00
hi GitGutterDelete ctermbg=00
hi GitGutterChangeDelete ctermbg=00

" General settings.
set backspace=start,eol,indent
set encoding=utf-8
set laststatus=2
set number
set spell

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
