" -------------------- plug.vim: First Plugin Manager ---------------------
" Specify a directory for plugins 
call plug#begin('~/.vim/plugged')
 
" Any valid git URL is allowed for plugin
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'ryanoasis/vim-devicons' "icon
Plug 'https://github.com/morhetz/gruvbox' " gruvbox colorscheme
Plug 'https://github.com/ap/vim-buftabline' " buffer lines
Plug 'unblevable/quick-scope' " f/t search highlight
Plug 'https://github.com/tpope/vim-commentary' " comment
Plug 'liuchengxu/vim-which-key'
Plug 'francoiscabrol/ranger.vim' " explorer
Plug 'mhinz/vim-startify' " start screen
Plug 'junegunn/fzf.vim' " search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " mandatory for fzf plugin
Plug 'vim-airline/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " airline theme
Plug 'lilydjwg/colorizer' " show text color
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

" ------------------- pathogen.vim : Second Plugin Manager ------------------
execute pathogen#infect() 

" set global map leader
let mapleader = ","
" set local map leader
let maplocalleader = "\\"

