" ----------------- coc.vim Remapping -----------------------------------
" Custom ke-mappings for completion of coc-nvim plugin
" Notes: alt+j is distinct from alt+J. That's why I make mappings both for
" uppercase and lowercase
if has('gui_running')
    inoremap <silent><expr> <A-j> coc#pum#visible() ? coc#pum#next(1) : "\<Down>"
    inoremap <silent><expr> <A-J> coc#pum#visible() ? coc#pum#next(1) : "\<Down>"
    inoremap <silent><expr> <A-k> coc#pum#visible() ? coc#pum#prev(1) : "\<Up>"
    inoremap <silent><expr> <A-K> coc#pum#visible() ? coc#pum#prev(1) : "\<Up>"
    inoremap <silent><expr> <A-m> coc#pum#visible() ? coc#pum#cancel() : "\<A-m>"
    inoremap <silent><expr> <A-M> coc#pum#visible() ? coc#pum#cancel() : "\<A-M>"
    inoremap <silent><expr> <A-u> coc#pum#visible() ? coc#pum#confirm() : "\<A-u>"
    inoremap <silent><expr> <A-U> coc#pum#visible() ? coc#pum#confirm() : "\<A-U>"
    inoremap <silent><expr> <A-n> coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
    inoremap <silent><expr> <A-N> coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
    inoremap <silent><expr> <A-p> coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"
    inoremap <silent><expr> <A-P> coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"
else
    inoremap <silent><expr> j coc#pum#visible() ? coc#pum#next(1) : "\<Down>"
    inoremap <silent><expr> J coc#pum#visible() ? coc#pum#next(1) : "\<Down>"
    inoremap <silent><expr> k coc#pum#visible() ? coc#pum#prev(1) : "\<Up>"
    inoremap <silent><expr> K coc#pum#visible() ? coc#pum#prev(1) : "\<Up>"
    inoremap <silent><expr> m coc#pum#visible() ? coc#pum#cancel() : "\<A-m>"
    inoremap <silent><expr> M coc#pum#visible() ? coc#pum#cancel() : "\<A-M>"
    inoremap <silent><expr> u coc#pum#visible() ? coc#pum#confirm() : "\<A-u>"
    inoremap <silent><expr> U coc#pum#visible() ? coc#pum#confirm() : "\<A-U>"
    inoremap <silent><expr> n coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
    inoremap <silent><expr> N coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
    inoremap <silent><expr> p coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"
    inoremap <silent><expr> P coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
