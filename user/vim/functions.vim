function Toggle_option_wrap()
    let wrap_status=&wrap
    if wrap_status 
        setlocal nowrap
    else
        setlocal wrap
    endif
endfunction

function Smart_quit()
    let l:bufnr = bufname()
    let l:bufmodified = getbufvar(1, "&mod") 
    if bufmodified
        if input("You have unsaved changes. Quit anyway? (y/n) ") == "y"
            exe "FloatermKill!"
            exe "q!"
        endif
    else
        exe "FloatermKill!"
        exe "q!"
    endif
endfunction

" in case closing buffer without saving
function Smart_delete_buffer()
    let l:bufnr = bufname()
    let l:bufmodified = getbufvar(1, "&mod") 
    if bufmodified
        if input("You have unsaved changes. Quit anyway? (y/n) ") == "y"
            exe "bd!"
        endif
    else
        exe "bd!"
    endif
endfunction
