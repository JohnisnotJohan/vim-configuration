" KEY MAPPINT Notes: 1. <C-...> is control-key and it's case insensitive (:help <C-)
"    <C-l> <=> <C-L>,  uppercase 'C' is the same as lowercase 'c'
" 2. <A-...> is alt-key and it's case sensitive (:help <A-)
"    <A-l> is distinct from <A-L>, uppercase 'A' is the same as 'a'
" 3. <A-...> mapping doesn't work in vim. The solution is that
"    3.1 first into insert mode
"    3.2 press ctrl+v
"    3.3 press alt+{char}

" ------------------- Normal Mode Mapping --------------------
" turn off search highlight
" :noh (short for nohighlight) will temporarily clear the search highlight.
nnoremap <silent> <A-l> :noh<CR>

" Edit my Vimrc file
" nnoremap <leader>ev :vsplit $MYVIMRC<cr> :vertical resize<cr>
" Source my Vimrc file
" I have no idea why the search will be activated when I source my .vimrc file.
" Note: :nohl\<cr> doesn't work
nnoremap <silent> <leader>sv :silent source $MYVIMRC<cr> :noh<cr>
" nnoremap <leader>sv :source $MYVIMRC<cr>  :nohl<cr><c-l>

" navigate between windows
nnoremap <c-h> :winc h<cr>
nnoremap <c-j> :winc j<cr>
nnoremap <c-k> :winc k<cr>
nnoremap <c-l> :winc l<cr>

" pageup pagedown
if has('gui_running')
    nnoremap <A-n> <PageDown>
    nnoremap <A-N> <PageDown>
    nnoremap <A-p> <PageUp>
    nnoremap <A-P> <PageUp>
else
    nnoremap n <PageDown>
"     nnoremap N <PageDown>
    nnoremap p <PageUp>
" don't uncomment this nnoremap
"     nnoremap P <PageUp>
endif

" save change
nnoremap <leader>w :w<cr>
" smart quit
nnoremap <leader>q :call Smart_quit()<cr>
" delete buffer
nnoremap <leader>c :call Smart_delete_buffer()<cr>

" navigate between buffer
nnoremap L :bnext<CR>
nnoremap H :bprev<CR>

" newline
nnoremap <Enter> o<esc>
nnoremap <leader>mw :vertical resize <cr>
nnoremap <leader>mh :resize <cr>
" adjust window size
nnoremap <leader>me <C-W>=

let g:wrap_is_open = &wrap 
" toggle wrap options
" nnoremap <leader>w :call Toogle_wrap_option()<cr>

" open an bash terminal
" nnoremap <leader>bash :term bash<cr>

" non-termail move between tab
" It's the same as terminal mode
if has('gui_running')
    nnoremap <silent> <A-,> :tabprevious<cr>
    nnoremap <silent> <A-.> :tabnext<cr>
else
    nnoremap <silent> , :tabprevious<cr>
    nnoremap <silent> . :tabnext<cr>
endif
" resize window. Increasing/decreasing size by 2 
" It's the same as terminal mode
nnoremap <C-Left>  :vertical resize -2<cr>
nnoremap <C-Right> :vertical resize +2<cr>
nnoremap <C-Up>    :resize +2<cr>
nnoremap <C-Down>  :resize -2<cr>

" ------------------- Insert Mode Mapping --------------------
" press Ctrl+d whenever you're in insert mode to delete the current line            
" inoremap <c-d> <esc>ddi

" map jk to <esc> so that we can back to normal mode without
" strenging our hands
inoremap jk <esc>

" Movement
" Notes: the <Up> and <Down> movement is defined in the coc.nvim mapping, see
" above
if has('gui_running')
    inoremap <A-h>   <Left>
    inoremap <A-H>   <Left>
    inoremap <A-l>   <Right>
    inoremap <A-L>   <Right>
else  
    inoremap h   <Left>
    inoremap H   <Left>
    inoremap l   <Right>
    inoremap L   <Right>
endif
" insert mode move to the last non blank character of the line.                         
" Notes: Trailing white space will make this mapping working wierd. 
" A generic solution is to put the command separator "|" right after the mapped
" keys.
" Notes: If you want to check if there is trailing whitespace after the map command, you can type :set list.
inoremap <C-L> <esc>g_a|
" insert mode move to the first non blank character of the line.
inoremap <c-h> <esc>^i|


" ------------------- Command Mode Mapping --------------------
" :help cmdline.txt

" cursor to beginning of the command-line
" :help c_CTRL-B
cnoremap <C-h> <C-B>
" cursor to end of the command-line
" :help c-CTRL-E
cnoremap <C-l> <C-E>
" backsapce, delete the character in front of the cursor
" :help c-CTRL-H
if has('gui_running')
    cnoremap <A-b> <C-H>
    cnoremap <A-B> <C-H>
else
    cnoremap b <C-H>
    cnoremap B <C-H>
endif
" In cmdline mode, press <C-v>, paste content from clipboard
" :help c-CTRL-R
cnoremap <C-v> <C-r>+

" cursor movement
if has('gui_running')
    cnoremap <A-h> <Left>
    cnoremap <A-H> <left>
    cnoremap <A-j> <Down>
    cnoremap <A-J> <Down>
else
    cnoremap h <Left>
    cnoremap H <left>
    cnoremap j <Down>
    cnoremap J <Down>
endif

" histroy query
if has('gui_running')
    cnoremap <A-k> <Up>
    cnoremap <A-K> <UP>
    cnoremap <A-l> <Right>
    cnoremap <A-L> <Right>
else
    cnoremap k <Up>
    cnoremap K <UP>
    cnoremap l <Right>
    cnoremap L <Right>
endif

" accept the currently selected match and stop completion.
" :help 'wildmenu'
if has('gui_running')
    cnoremap <A-U> <C-Y>
    cnoremap <A-u> <C-Y>
else
    cnoremap U <C-Y>
    cnoremap u <C-Y>
endif
" end completion, go back to what was there before selecting a match.
" :help 'wildmenu'
if has('gui_running')
    cnoremap <A-m> <C-E>
    cnoremap <A-M> <C-E>
else
    cnoremap m <C-E>
    cnoremap M <C-E>
endif

" ------------------- Terminal Mode Mapping --------------------
" Navigation between vim and terminal
tnoremap <c-h> <c-w>h
tnoremap <c-l> <c-w>l
tnoremap <c-k> <c-w>k
tnoremap <c-j> <c-w>j

" clear screen
tnoremap l <c-l>

" terminal left and right move
if has('gui_running')
    tnoremap <silent> <A-h> <Left>
    tnoremap <silent> <A-H> <Left>
    tnoremap <silent> <A-l> <Right>
    tnoremap <silent> <A-L> <Right>
    tnoremap <silent> <A-j> <Down>
    tnoremap <silent> <A-J> <Down>
    tnoremap <silent> <A-k> <Up>
    tnoremap <silent> <A-K> <Up>
else
    tnoremap <silent> h <Left>
    tnoremap <silent> H <Left>
    tnoremap <silent> l <Right>
    tnoremap <silent> L <Right>
    tnoremap <silent> j <Down>
    tnoremap <silent> J <Down>
    tnoremap <silent> k <Up>
    tnoremap <silent> K <Up>
endif

" termianl resizing
tnoremap <C-Left>  <C-w>:vertical resize -2<cr>
tnoremap <C-Right> <C-w>:vertical resize +2<cr> 
tnoremap <C-Up>    <C-w>:resize +2<cr>
tnoremap <C-Down>  <C-w>:resize -2<cr>

" from terminal to Terminal-normal mode
if has('gui_running')
    tnoremap <A-q> <C-w>N
else
    tnoremap q <C-w>N
endif

" ------------------- Visual Mode Mapping --------------------
" stay in indent mode
vnoremap < <gv
vnoremap > >gv

" Move text up and down (<A-j> <A-k> have no effect)
vnoremap j :m .+1<cr>
vnoremap k :m .-2<cr>

" better paste(when paste on a selected text, the register won't be changed to the yank one)
vnoremap p "_dP

" select to the head of line
vnoremap H ^
" select to the end of line
vnoremap L $

" ------------------- Operator Mode Mapping --------------------
" Map H in normal mode to go to the beginning of the current line. 
" Since h moves left you can think of H as a "stronger" h.
onoremap H ^
" Map L in normal mode to go to the end of the current line. 
" Since l moves right you can think of L as a "stronger" l. 
onoremap L $


" good print highlight group
nnoremap <F4> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

