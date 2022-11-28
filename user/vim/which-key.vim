nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

call which_key#register(',', "g:which_key_map")

" Define prefix dictionary
let g:which_key_map =  {}

" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

let g:which_key_map = {
      \ 'b' : [":Buffers", 'buffers'],
      \ 'c' : "close buffer",
      \ 'e' : "NERDtree",
      \ 'h' : ['split', 'horizontal split'],
      \ 'k' : ['FloatermKill', 'Kill Float Termial'],
      \ 'q' : "quit",
      \ 'r' : "ranger",
      \ 'S' : "Startify",
      \ 'v' : ['vsplit', 'vertical split'],
      \ 'w' : "save",
      \ }

" =======================================================
" Create menus not based on existing mappings:
" =======================================================
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.)
" and descriptions for the existing mappings.
"
" Note:
" Some complicated ex-cmd may not work as expected since they'll be
" feed into `feedkeys()`, in which case you have to define a decicated
" Command or function wrapper to make it work with vim-which-key.
" Ref issue #126, #133 etc.
let g:which_key_map.s = {
      \ 'name' : '+Session' ,
      \ 's' : ['SSave', 'save session'],
      \ 'r' : ['SLoad', 'load session'],
      \ 'x' : ['SDelete', 'delete session'],
      \ 'c' : ['SClose', 'save and close sessions'],
      \ 'v' : 'source .vimrc',
      \ }

let g:which_key_map.p = {
      \ 'name' : '+Plug Manager' ,
      \ 'i' : ['PlugInstall', 'Install'],
      \ 'u' : ['PlugUpdate', 'Update'],
      \ 's' : ['PlugStatus', 'Stauts'],
      \ 'S' : ['PlugSnapshot', 'Snapshot'],
      \ }

let g:which_key_map.f = {
      \ 'name' : '+find' ,
      \ 'f' : ['Files', 'Files'],
      \ 'b' : ['BLines', 'Lines in cur buffer'],
      \ 'B' : ['Lines', 'Lines in loaded buffer'],
      \ 'o' : ['Histroy', 'Old Files'],
      \ 'c' : ['Commands', 'Commands'],
      \ 'C' : ['Colors', 'Colorscheme'],
      \ 't' : ['Ag', 'Text ag'],
      \ 'T' : ['Rg', 'Text rg'],
      \ 'w' : ['Windows', 'Windows'],
      \ 'm' : ['Maps', 'keymaps'],
      \ }

let g:which_key_map.o = {
      \ 'name' : '+Options' ,
      \ 'a' : ['AirlineToggle', 'Toggle Airline'],
      \ 'c' : ['Colorizer', 'Toggle Colorizer'],
      \ 'w' : [':call Toggle_option_wrap()', 'Toggle wrap'],
      \ }

let g:which_key_map.t = {
      \ 'name' : '+Terminal' ,
      \ 'f' : ['FloatermToggle', 'Float'],
      \ '1' : [':FloatermToggle =floaterm1', 'Float-term 1'],
      \ '2' : [':FloatermToggle =floaterm2', 'Float-term 2'],
      \ '3' : [':FloatermToggle =floaterm3', 'Float-term 3'],
      \ '4' : [':FloatermToggle =floaterm4', 'Float-term 4'],
      \ 'v' : [':FloatermNew  --width=0.5 --wintype=vsplit', 'Vertical'],
      \ 'h' : [':FloatermNew  --height=0.5 --wintype=split', 'Horizontal'],
      \ }
