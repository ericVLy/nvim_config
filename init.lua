local api = vim.api
local version = vim.version

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~\\AppData\\Local\\nvim\\plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neovim/nvim-lspconfig'
-- what about Plug?...

vim.call('plug#end')