local api = vim.api
local version = vim.version

require('basic')
require("plugs")
require("lsp/setup")


vim.cmd[[
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'unique_tail'
]]
