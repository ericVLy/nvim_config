-- return true if os is windows
local function is_windows()
  return "\\" == package.config:sub(1,1)
end

local Plug = vim.fn['plug#']
if (is_windows())
then
  vim.call('plug#begin', '~\\AppData\\Local\\nvim\\plugged')
else
  vim.call('plug#begin', '~/.config/nvim/plugged')
end
-- below are some vim plugins for demonstration purpose.
-- add the plugin you want to use here.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neovim/nvim-lspconfig'

-- nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
Plug 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
Plug 'hrsh7th/cmp-path'     -- { name = 'path' }
Plug 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
Plug 'hrsh7th/nvim-cmp'
-- vsnip
Plug 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'
-- lspkind
Plug 'onsails/lspkind-nvim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

-- rust
Plug 'rust-lang/rust.vim'

-- git
Plug 'lewis6991/gitsigns.nvim'
-- may need wait a part of time when run such two plugs first time
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

-- debug tool
Plug 'puremourning/vimspector'
if not (is_windows())
then
Plug 'sagi-z/vimspectorpy'
end
-- heigh light
Plug 'nvim-treesitter/nvim-treesitter'

-- telescope
vim.cmd[[
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
]]


-- Terminal
vim.cmd[[
Plug 'akinsho/toggleterm.nvim', {'branch': 'main'}
]]
-- color theme
vim.cmd[[Plug 'folke/tokyonight.nvim', { 'branch': 'main' }]]

vim.call('plug#end')

-- gitsigns.nvim
require('gitsigns').setup {
    signs = {
      add          = { text = '│' },
      change       = { text = '│' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
      untracked    = { text = '┆' },
    },
    signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
    numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
      interval = 1000,
      follow_files = true
    },
    attach_to_untracked = true,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000, -- Disable if file is longer than this (in lines)
    preview_config = {
      -- Options passed to nvim_open_win
      border = 'single',
      style = 'minimal',
      relative = 'cursor',
      row = 0,
      col = 1
    },
    yadm = {
      enable = false
    },
  }


-- Terminal
require('toggleterm').setup{
    active = true,
    -- size can be a number or function which is passed the current terminal
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = false,
    -- direction = 'vertical' | 'horizontal' | 'window' | 'float',
    direction = "float",
    close_on_exit = true, -- close the terminal window when the process exits
    -- This field is only relevant if direction is set to 'float'
    shell = vim.o.shell,
    float_opts = {
      -- The border key is *almost* the same as 'nvim_win_open'
      -- see :h nvim_win_open for details on borders however
      -- the 'curved' border is a custom border type
      -- not natively supported but implemented in this plugin.
      -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
      border = "curved",
      -- width = <value>,
      -- height = <value>,
      winblend = 0,
      highlights = {
        border = "Normal",
        background = "Normal",
      },
    },
  }
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

