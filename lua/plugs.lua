local Plug = vim.fn['plug#']
vim.call('plug#begin', '~\\AppData\\Local\\nvim\\plugged')
-- below are some vim plugins for demonstration purpose.
-- add the plugin you want to use here.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'scrooloose/nerdtree'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'Xuyuanp/nerdtree-git-plugin'

vim.call('plug#end')