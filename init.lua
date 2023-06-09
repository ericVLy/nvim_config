local api = vim.api
local version = vim.version

require('basic')
require("plugs")
require("nvim_treesitter")
require("lsp/setup")
require('keybindings')

-- theme
vim.cmd[[colorscheme tokyonight]]

-- airlime config
vim.cmd[[
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'unique_tail'
]]

vim.cmd[[
let g:vimspector_enable_mappings='HUMAN'
let g:vimspector_install_gadgets = ["debugpy", "vscode-python"]
]]

