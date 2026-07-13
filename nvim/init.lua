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
	require("plugins.blinkcmp"),
	require("plugins.fidget"),
	require("plugins.lsp"),
	require("plugins.mason"),
	require("plugins.format"),
	require("plugins.autopairs"),
	require("plugins.gitsigns"),
	require("plugins.neotree"),
	require("plugins.multicursor"),
	require("plugins.statusline"),
	require("plugins.telescope"),
	require("plugins.barbar"),
	require("plugins.undotree"),
	require("plugins.indentline"),
	require("plugins.treesitter"),
	require("plugins.tokyonight"),
	require("plugins.copilot"),
	require("plugins.fold-origami"),
	require("plugins.auto-tag-html"),
	require("plugins.statuscol"),
	require("plugins.whichkey"),
	require("plugins.gitblame"),
	require("plugins.todocomments"),
	require("plugins.markdown-render"),
	require("plugins.dadbod"),
})
