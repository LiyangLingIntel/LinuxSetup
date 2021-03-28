syntax on

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" Auto complection
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" File Tree
Plug 'preservim/nerdtree'
" 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" Initialize plugin system
call plug#end()
