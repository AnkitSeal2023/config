return {
	"folke/tokyonight.nvim",
	lazy = false, -- Make sure it loads during startup
	priority = 1000, -- Load it before all other plugins
	config = function()
		-- Set your favorite variant here: storm, moon, night, or day
		-- require("tokyonight").setup({ style = "night" })

		-- Activating the theme permanently
		vim.cmd([[colorscheme tokyonight-night]])
	end,
}
