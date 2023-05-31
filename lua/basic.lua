-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- set num
vim.wo.number = true
-- 高亮所在行
vim.wo.cursorline = true
-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
-- auto read write
vim.g.autoread = true
vim.g.autowriteall = true

-- Complete parentheses
vim.cmd[[
inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
]]
-- nerdtree config
vim.cmd[[
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
]]
-- flod
-- vim.cmd[[
-- set foldmethod=indent
-- ]]
