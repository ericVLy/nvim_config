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

vim.call('plug#end')