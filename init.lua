local api = vim.api
local version = vim.version

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~\\AppData\\Local\\nvim\\plugged')
-- below are some vim plugins for demonstration purpose.
-- add the plugin you want to use here.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neovim/nvim-lspconfig'

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

vim.call('plug#end')
-- require'pylsp_cfg'  -- 04,13,2023 Rope: currently very buggy, not recommended for now
-- require'lspconfig'.jedi_language_server.setup{
--     cmd = { "jedi-language-server" },
--     filetypes = { "python" },
--     single_file_support = true,
-- }