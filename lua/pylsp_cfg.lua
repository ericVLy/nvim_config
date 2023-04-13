local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('v', '<Leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)

end

require'lspconfig'.pylsp.setup{
  -- To enable pylsp-rope logging
  -- cmd = { "pylsp", "-v", "--log-file", "/tmp/nvim-pylsp.log" },
  cmd = { "pylsp" },

  on_attach = on_attach,
}