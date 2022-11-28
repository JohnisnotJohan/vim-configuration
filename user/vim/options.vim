" ---------------- system vimrc setting: $VIM/vimrc -------------------

" Use Vim defaults instead of 100% vi compatibility
" set nocompatible	

" more powerful backspacing
" set backspace=indent,eol,start	

" keep 50 lines of command line history
" set history=50		

" show the cursor position all the time. It will be overrided when statusline
" is set. Go and check :help 'ruler'
" set ruler		

" modelines have historically been a source of security/resource
" vulnerabilities -- disable by default, even when 'nocompatible' is set
" set nomodeline

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
" set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" line enables syntax highlighting by default.
" if has("syntax")
"   syntax on
" endif


" -------------------- GUI specific configuration  ---------------------
if has("gui_running")                                                  
    " disable menu bar for diabling <alt> related kep mapping
    set guioptions-=m
    " set GUI font and fontsize
    set guifont=Ubuntu\ Mono\ Regular\ 22
    " Put the GUI vim window at the given {72} and {27} coordinates.
    winpos 72 27
    " Maximize the window size 
    winsize 999 999
endif


" ------------------ Setting Configuration -------------------

" :help 'compatible'
if &compatible
    set nocompatible 
endif

" A status line will be used to separate windows. The 'laststatus' 
" option tells when the last window also has a status line:
" 'laststatus' = 2        always a status line
set laststatus=2
" Change the contents of the status line with the 'statusline' option.
" Type ':help statuslines' to find more information.
set statusline=[%f]%m%r%w%y%=[buffer\ %n][percent:\ %p%%]

" 1. When 'list' option is on, 'listchars' takes effect.
" 2. 'precedes' and 'extend' takes effect when 'nowarp' option is set.
" 3. '\ ' uses backslash to represent space. 
" 4. Trail is one of space. Trailing space is all whitespace located at the end of a line,
"    without any other characters following it. 
" 5. If 'expandtab' option is set, you can't insert a tab typing Tab, for tab is
"    subsitituted by spaces. That's why you can't see '▸' when typing [Tab] 
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
" to make sure there is no trailing whitespace after mapping command,
" set list to show the space end <CR> in the .vimrc file
if expand("%") ==# ".vimrc"
    set list
endif

" Considering the system vimrc has already done the 'syntax on', we don't need to do it here.
" syntax on

" color scheme
if has('gui_running')
    colorscheme badwolf
else
    " set background=dark
    colorscheme nvcode
endif

set clipboard=unnamedplus " allows vim to access the system clipboard
set tabstop=4 " number of visual spaces per TAB
set expandtab " turns <TAB>s into spaces
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " set the width of shift 4. Notes: shift is distinct from tab

set cmdheight=2 " more space in the neovim command line for displaying messages
if &filetype !=# "help"
    " add numbers to each line on the left-hand side
    set number
    set relativenumber
endif

set cursorline " Highlight cursor line underneath the cursor horizontally
" set cursorcolumn " Highlight cursor line underneath the cursor vertically 
set wildmenu " visual autocomplete for command menu
set wildoptions=pum " When 'wildoptions' contains "pum", then the completion matches are shown in a popup menu.
set pumheight=10 " pop up menu height
set mouse=a " allow the mouse to be used in neovim

set splitbelow " force all horizontal splits to go below current window
set splitright " force all vertical splits to go to the right of current window
set swapfile " creates a swapfile
" When a bracket is inserted, briefly jump to the matching one. The
" jump is only done if the match can be seen on the screen. The time to
" show the match can be set with 'matchtime'.
set showmatch    
set matchtime=1
set hidden
set wrap " Do wrap lines. Disallow long lines to extend as far as the line goes.
set linebreak " companion to wrap, don't split words

set showtabline=2 " always show tabs
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase " Ignore capital letters during search.
set smartcase " Override the ignorecase option if searching for capital letters. This will allow you to search specifically for capital letters.
set iskeyword+=-

" 'timeout'    'ttimeout'               action ~
"    off          off                do not time out
"    on           on or off          time out on :mappings and key codes
"    off          on                 time out on key codes
" The default value of &timeout = 1 and &ttimeout = 0
"  ttimeoutlen      mapping delay    key code delay ~
"     < 0            'timeoutlen'    'timeoutlen'
"     >= 0           'timeoutlen'    'ttimeoutlen'
" The default value of &ttimeoutlen = -1
" The default value of &timeoutlen = 1000
set timeoutlen=300 " time to wait for a mapped sequence to complete (in milliseconds)
set undofile " enable persistent undo

set showcmd " display incomplete commands

set backupdir=/tmp// " backup file. myfile.txt~ is a backup file — the version of myfile.txt before your edited it.
set directory=/tmp// " swap file. .myfile.txt.swp is a swap file, containing the unsaved changes.
set undodir=/tmp// " uodo file. .myfile.txt.un~ is an undo file, containing the undo trees of the file edited.


" ---------------------- Autocommand -------------------------
augroup vimStartup
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid, when inside an event handler
    " (happens when dropping a file on gvim) and for a commit message (it's
    " likely a different one than last time).
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif
augroup END

augroup filetype_markdown
    autocmd!
    autocmd FileType markdown setlocal spelllang=en spell
augroup END
