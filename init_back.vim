call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neovim/nvim-lspconfig'

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'


Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
Plug 'deoplete-plugins/deoplete-jedi'
call plug#end()