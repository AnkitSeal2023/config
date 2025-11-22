return {
	{
		"rrethy/vim-hexokinase",
		build = "make hexokinase",

		init = function()
			vim.opt.termguicolors = true

			-- vim.g.Hexokinase_highlighters = { "virtual" }
			vim.g.Hexokinase_highlighters = { "backgroundfull" }

			vim.g.Hexokinase_optInPatterns = {
				"full_hex",
				"triple_hex",
				"rgb",
				"rgba",
				"hsl",
				"hsla",
				"colour_names",
			}

			vim.g.Hexokinase_ftOptInPatterns = {
				css = "full_hex,rgb,rgba,hsl,hsla,colour_names",
				html = "full_hex,rgb,rgba,hsl,hsla,colour_names",
			}
		end,
	},
}
