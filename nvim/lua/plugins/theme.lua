-- return { -- You can easily change to a different colorscheme.
-- 	-- Change the name of the colorscheme plugin below, and then
-- 	-- change the command in the config to whatever the name of that colorscheme is.
-- 	--
-- 	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
-- 	-- "EdenEast/nightfox.nvim",
-- 	"folke/tokyonight.nvim",
-- 	opts = {
-- 		transparent = true,
-- 		sidebars = "transparent",
-- 		floats = "transparent",
-- 	},
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	config = function()
-- 		---@diagnostic disable-next-line: missing-fields
-- 		require("tokyonight").setup({
-- 			-- require("nightfox").setup({
-- 			styles = {
-- 				comments = { italic = false }, -- Disable italics in comments
-- 				sidebars = "transparent",
-- 				floats = "transparent",
-- 			},
-- 		})
--
-- 		-- Load the colorscheme here.
-- 		-- Like many other themes, this one has different styles, and you could load
-- 		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
-- 		vim.cmd.colorscheme("tokyonight-night")
-- 		-- vim.cmd.colorscheme("nightfox")
-- 		-- vim.cmd.colorscheme("nordfox")
-- 	end,
-- }

return {
	-- "EdenEast/nightfox.nvim",

	"folke/tokyonight.nvim",
	priority = 1000,
	-- opts = {
	-- 	transparent = false, -- makes background = NONE
	-- 	styles = {
	-- 		-- sidebars = "transparent",
	-- 		-- floats = "transparent",
	-- 	},
	-- },
	config = function()
		require("tokyonight").setup({
			transparent = false,
			styles = {
				comments = { italic = false },
				-- sidebars = "transparent",
				-- floats = "transparent",
			},
		})

		vim.cmd.colorscheme("tokyonight-night")

		-- remove all background highlights (treesitter, normal, floats, end-of-buffer, etc.)
		-- vim.api.nvim_set_hl(0, "Normal", {})
		-- vim.api.nvim_set_hl(0, "Normal", { bg = "#16161e" })
		-- vim.api.nvim_set_hl(0, "NormalFloat", {})
		-- vim.api.nvim_set_hl(0, "FloatBorder", {})
		-- vim.api.nvim_set_hl(0, "NormalNC", {})
		-- vim.api.nvim_set_hl(0, "TelescopeNormal", {})
		-- vim.api.nvim_set_hl(0, "TelescopeBorder", {})
		-- vim.api.nvim_set_hl(0, "SignColumn", {})
		-- vim.api.nvim_set_hl(0, "EndOfBuffer", {})
		-- vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
	end,
}
--
-- return {
-- 	"folke/tokyonight.nvim",
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		require("tokyonight").setup({
-- 			styles = {
-- 				comments = { italic = false },
-- 			},
-- 		})
--
-- 		vim.cmd.colorscheme("tokyonight-night")
-- 	end,
-- }
