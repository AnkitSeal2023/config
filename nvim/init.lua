require("core.keymaps")
require("core.options")
require("core.snippets")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.indent"),
	require("plugins.gitsigns"),
	require("plugins.whichkey"),
	require("plugins.telescope"),
	require("plugins.render-markdown"),
	{
		-- `lazydev` configures lua lsp for your neovim config, runtime and plugins
		-- used for completion, annotations and signatures of neovim apis
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				-- load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	require("plugins.lsp"),
	require("plugins.autoformat"),
	{
		"nanotee/sqls.nvim",
	},
	require("plugins.autocmp"),
	require("plugins.autopairs"),
	require("plugins.theme"),
	require("plugins.todocomments"),
	require("plugins.mini"),
	require("plugins.treesitter"),
	require("plugins.neo-tree"),
	require("plugins.minty"),
	require("plugins.coloriser"),
	require("plugins.statusline"),
	require("plugins.barbar"),
	require("plugins.multicursor"),
	-- { "typicode/bg.nvim", lazy = false },
	{ "themaxmarchuk/tailwindcss-colors.nvim" },
	{ "nvim-java/nvim-java" },
	{ "github/copilot.vim" },
	{ "elkowar/yuck.vim" },
}, {
	ui = require("misc.ui"),
})
