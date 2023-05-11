local Plug = vim.fn['plug#']
vim.call('plug#begin', '~\\AppData\\Local\\nvim\\plugged')
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

-- git
Plug 'lewis6991/gitsigns.nvim'
-- may need wait a part of time when run such two plugs first time
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'


Plug 'puremourning/vimspector'

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
