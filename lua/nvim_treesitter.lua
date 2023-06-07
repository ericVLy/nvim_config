require'nvim-treesitter.configs'.setup {
  -- install language parser
  -- :TSInstallInfo show installed info
  ensure_installed = {"vim", "lua", "python"},
  -- enable highlight
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  -- enable incremental selection
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
  -- NOTE: This is an experimental feature.
  indent = {
    enable = true
  }
}
-- enable Folding
vim.wo.foldmethod = 'indent'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99
