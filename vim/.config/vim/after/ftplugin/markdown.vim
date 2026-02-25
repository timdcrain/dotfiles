setlocal formatoptions=atnl

Limelight

let b:autoformat = 1

function! IsOdd(pattern)
    let l:result = searchcount(#{pattern: '^' . a:pattern . '$', pos: [line('.') - 1, 1, 0]})
    return l:result.current % 2 == 1
endfunction

function! InsertEnterToggleAutoformat()
    if IsOdd('+++') || IsOdd('```') || IsOdd('---')
        if b:autoformat
            let b:autoformat = 0
            setlocal formatoptions-=a
        endif
    else
        if !b:autoformat
            let b:autoformat = 1
            setlocal formatoptions+=a
        endif
    endif
endfunction

function! TextChangedToggleAutoformat()
    if getline('.') =~ '^+++$\|^```$'
        if b:autoformat
            let b:autoformat = 0
            setlocal formatoptions-=a
        else
            let b:autoformat = 1
            setlocal formatoptions+=a
        endif
    endif
endfunction

augroup MarkdownAutoformat
    autocmd!
    autocmd InsertEnter *.md call InsertEnterToggleAutoformat()
    autocmd TextChangedI *.md call TextChangedToggleAutoformat()
augroup END
