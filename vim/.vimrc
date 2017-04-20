" Required setup for Vundle.
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'chriskempson/base16-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'rust-lang/rust.vim'
Plugin 'timdcrain/vim-captains-log'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'

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

" Airline settings.
let g:airline_detect_spell = 0
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

" ALE settings.
let g:ale_sign_error = '×'
let g:ale_sign_warning = '⚠'
let g:ale_set_highlights = 0
hi ALEErrorSign ctermbg=00 ctermfg=01
hi ALEWarningSign ctermbg=00 ctermfg=03

" Don't lint while typing until we exit insert mode.
let g:ale_lint_on_text_changed = 'normal'
augroup ALERunOnInsertLeaveGroup
    autocmd!
    autocmd InsertLeave * call ale#Queue(0, 'lint_file')
augroup END

" Git gutter settings.
hi GitGutterAdd ctermbg=00
hi GitGutterChange ctermbg=00
hi GitGutterDelete ctermbg=00
hi GitGutterChangeDelete ctermbg=00

" Jedi settings.
autocmd FileType python setlocal completeopt-=preview
let g:jedi#show_call_signatures = 0

" Supertab settings.
let g:SuperTabDefaultCompletionType = "<C-N>"

" Tagbar settings.
nnoremap <F8> :TagbarToggle<CR>

" General settings.
set backspace=start,eol,indent
set directory=~/tmp,/var/tmp,/tmp
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
