vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*",
-- 	callback = function(args)
-- 		require("conform").format({ bufnr = args.buf })
-- 	end,
-- })
--
-- vim.api.nvim_create_autocmd("BufReadPost", {
-- 	pattern = "*",
-- 	callback = function()
-- 		pcall(vim.treesitter.start)
-- 	end,
-- })

-- vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPost" }, {
--     callback = function()
--         local parsers = require("nvim-treesitter.parsers")
--         local lang = parsers.get_buf_lang(0)
--         if parsers.has_parser(lang) then
--             vim.treesitter.get_parser(0, lang):parse()
--         end
--     end,
-- })
