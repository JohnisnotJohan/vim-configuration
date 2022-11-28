nnoremap <leader>S :Startify<cr>
let g:startify_session_dir = '~/.vim/session' " The directory to save/load sessions to/from.
let g:startify_custom_indices = map(range(1,100), 'string(v:val)') " If you want numbers to start at 1 instead of 0

function s:quick_start()
return [
      \ { 'line': '.vimrc', 'path': '~/.vimrc' },
      \ { 'line': 'init.lua', 'path': '~/.config/nvim/init.lua' },
      \ ]
endfunction

let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'files',     'header': ['   The most recently used files']},
      \ { 'type': 'dir',       'header': ['   The files from the current directory sorted by modification time '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ { 'type': function('s:quick_start'),  'header': ['   Quick Start']       },
      \ ]

let g:startify_bookmarks = [ 
            \ {'c': '~/.vimrc'}, 
            \ {'C': '~/.config/nvim/init.lua'}, 
            \ ]

let g:startify_commands = [
    \ ':help reference',
    \ ['Vim Reference', 'h ref'],
    \ ]

let g:startify_custom_header = [
        \ '          ___           ___           ___           ___           ___         ',
        \ '         /\  \         /\  \         /\  \         /\  \         /\__\        ',
        \ '        /::\  \       /::\  \       /::\  \       /::\  \       /:/  /        ',
        \ '       /:/\:\  \     /:/\:\  \     /:/\:\  \     /:/\:\  \     /:/  /         ',
        \ '      /:/  \:\__\   /::\~\:\  \   /::\~\:\  \   /::\~\:\  \   /:/  /  ___     ',
        \ '     /:/__/ \:|__| /:/\:\ \:\__\ /:/\:\ \:\__\ /:/\:\ \:\__\ /:/__/  /\__\    ',
        \ '     \:\  \ /:/  / \/__\:\/:/  / \/_|::\/:/  / \:\~\:\ \/__/ \:\  \ /:/  /    ',
        \ '      \:\  /:/  /       \::/  /     |:|::/  /   \:\ \:\__\    \:\  /:/  /     ',
        \ '       \:\/:/  /        /:/  /      |:|\/__/     \:\ \/__/     \:\/:/  /      ',
        \ '        \::/__/        /:/  /       |:|  |        \:\__\        \::/  /       ',
        \ '         ~~            \/__/         \|__|         \/__/         \/__/        ',
        \]
