vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- Visual mode: copy to system clipboard
map("v", "<C-S-c>", '"+y', opt)
-- Normal mode: paste from system clipboard
map("n", "<C-S-v>", '"+p', opt)
-- Insert right
map("i", "<C-f>", "<Right>", opt)
-- windows 分屏快捷键
map("n", "<leader>ss", ":vsp<CR>", opt)
-- 关闭当前
map("n", "<leader>x", "<C-w>c", opt)
-- 新 tab 打开当前页面
map("n", "<leader>t", "<C-w>T", opt)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)
-- 切换tab


-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


local pluginKeys = {}

-- buffer
map("n", "<leader>d", ":bdelete<CR>", opt)
map("n", "<leader>l", ":bnext<CR>", opt)

pluginKeys.nvimTreeList = {
	-- 打开文件或文件夹
	{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "tabnew" },
	{ key = "e", action = "edit" },
	-- 分屏打开文件
	{ key = "s", action = "vsplit" },
	-- 显示隐藏文件
	{ key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
	{ key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
	-- 文件操作
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "r", action = "rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
	{ key = "o", action = "system_open" },
}

pluginKeys.mapLSP = function(mapbuf)
	-- -- rename
	-- mapbuf("n", ",r", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
	-- code action
	mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
	-- go xx
	mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
	mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
	mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
	mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
	mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
	-- diagnostic
	mapbuf("n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
	mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
	mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
	-- format
	mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true })
end

pluginKeys.cmp = function(cmp)
	local t = function(str)
		return vim.api.nvim_replace_termcodes(str, true, true, true)
	end
	return {
		["<Tab>"] = cmp.mapping({
			c = function()
				if cmp.visible() then
					cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
				else
					cmp.complete()
				end
			end,
			i = function(fallback)
				if cmp.visible() then
					cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
				else
					fallback()
				end
			end,
			s = function(fallback)
				if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
					vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), "m", true)
				else
					fallback()
				end
			end,
		}),
		["<S-Tab>"] = cmp.mapping({
			c = function()
				if cmp.visible() then
					cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
				else
					cmp.complete()
				end
			end,
			i = function(fallback)
				if cmp.visible() then
					cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
				else
					fallback()
				end
			end,
			s = function(fallback)
				if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
					return vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_backward)"), "m", true)
				else
					fallback()
				end
			end,
		}),
		["<Down>"] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), { "i", "c" }),
		["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), { "i", "c" }),
		["<C-e>"] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<CR>"] = cmp.mapping({
                        i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
                     -- c = function(fallback)
                     --         if cmp.visible() then
                     --                 cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })
                     --         else
                     --                 fallback()
                     --         end
                     -- end,
                }),
	}
end

return pluginKeys
