" Required setup for Vundle.
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chaoren/vim-wordmotion'
Plugin 'chriskempson/base16-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'jceb/vim-orgmode'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'udalov/kotlin-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'

call vundle#end()

" Filetype-specific features.
syntax on
filetype plugin indent on

" Color scheme. This must come after the syntax and
" filetype lines so that the hi commands work.
set background=dark
colorscheme base16-tomorrow-night
call Base16hi("LineNr", g:base16_gui03, g:base16_gui00, g:base16_cterm03, g:base16_cterm00)
call Base16hi("SignColumn", g:base16_gui03, g:base16_gui00, g:base16_cterm03, g:base16_cterm00)
call Base16hi("SpellBad", "", g:base16_gui00, "", g:base16_cterm00, "undercurl", g:base16_gui08)
call Base16hi("DiffAdd", g:base16_gui0B, g:base16_gui00, g:base16_cterm0B, g:base16_cterm00)
call Base16hi("DiffChange", g:base16_gui03, g:base16_gui00, g:base16_cterm03, g:base16_cterm00)
call Base16hi("DiffDelete", g:base16_gui08, g:base16_gui00, g:base16_cterm08, g:base16_cterm00)

" Expand tabs to four spaces.
set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab
set expandtab

" Look for tags under .git
set tags=.git/tags

" Show special characters for whitespace.
set listchars=tab:—\—,trail:·
set list

" Airline settings.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme = 'base16_tomorrow'
let g:airline_detect_spell = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ''
let g:airline#extensions#ale#enabled = 1

" ALE settings.
let g:ale_sign_info = 'ℹ'
let g:ale_sign_error = '×'
let g:ale_sign_warning = '⚠'
let g:ale_set_highlights = 0
hi ALEErrorSign ctermbg=00 ctermfg=01
hi ALEWarningSign ctermbg=00 ctermfg=03

nmap <silent> ]l <Plug>(ale_next_wrap)
nmap <silent> [l <Plug>(ale_previous_wrap)

" Don't lint while typing until we exit insert mode.
let g:ale_lint_on_text_changed = 'normal'
augroup ALERunOnInsertLeaveGroup
    autocmd!
    autocmd InsertLeave * call ale#Queue(0)
augroup END

" Signify settings.
hi clear SignifySignAdd
hi clear SignifySignChange
hi clear SignifySignDelete

function! SignifyHunkNext(count) abort
    let oldpos = getcurpos()
    call sy#jump#next_hunk(a:count)
    if getcurpos() == oldpos
        call sy#jump#prev_hunk(9999)
    endif
endfunction

function! SignifyHunkPrev(count) abort
    let oldpos = getcurpos()
    call sy#jump#prev_hunk(a:count)
    if getcurpos() == oldpos
        call sy#jump#next_hunk(9999)
    endif
endfunction

nnoremap <silent> [c :call SignifyHunkPrev(1)<cr>
nnoremap <silent> ]c :call SignifyHunkNext(1)<cr>

" Jedi settings.
autocmd FileType python setlocal completeopt-=preview
let g:jedi#show_call_signatures = 0

" Supertab settings.
let g:SuperTabDefaultCompletionType = "<C-N>"

" Tagbar settings.
nnoremap <F8> :TagbarToggle<CR>

" General settings.
set backspace=start,eol,indent
set directory=~/.cache/vim/swap,/var/tmp,/tmp
set encoding=utf-8
set formatoptions+=j
set ignorecase
set nofoldenable
set laststatus=2
set number
set smartcase
set spell
set textwidth=119
set updatetime=100
set viminfo+=n~/.cache/vim/viminfo

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

function! ScrollToPercent(percent)
    let l:current_row = winline()
    let l:desired_row = winheight(0) * a:percent / 100
    if has("float") && type(desired_row) == type(0.0)
        let l:desired_row = float2nr(l:desired_row)
    endif

    let l:diff = abs(current_row - desired_row)

    if current_row > desired_row
        " The cursor is below the desired row, and we need
        " to move the cursor UP.
        execute 'normal! ' . diff . ''
    elseif current_row < desired_row
        " The cursor is above the desired row, and we need
        " to move the cursor DOWN.
        execute 'normal! ' . diff . ''
    endif
endfunction

nnoremap <silent> zu :call ScrollToPercent(20)<cr>
nnoremap <silent> zd :call ScrollToPercent(80)<cr>

function! BalanceSplits()
    if winnr('$') > 1
        execute 'normal! ='
    endif
endfunction

autocmd VimResized * :call BalanceSplits()

function! RemoveTrailingWhitespace() range
    execute a:firstline . ',' . a:lastline . 's/ *$//'
endfunction

command! -range RemoveTrailingWhitespace :<line1>,<line2>call RemoveTrailingWhitespace()
