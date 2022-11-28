let g:floaterm_width=0.8
let g:floaterm_height=0.8
nnoremap <c-\> :FloatermToggle<cr>
nnoremap <leader>k :FloatermKill<cr>
tnoremap <c-\> <C-w>N:FloatermToggle<cr>

function FloatTermToggle_Resize()
    " exec 'FloatermNew --height=0.6 --width=0.4 --wintype=float --name=floaterm1 --position=topleft --autoclose=2 ranger --cmd="cd ~"'
    " exec 'FloatTermToggle --height=1 --width=1 --wintype=float --name=floaterm1 --autoclose=2'
endfunction
