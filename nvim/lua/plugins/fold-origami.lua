return {
	"chrisgrieser/nvim-origami",
	event = "VeryLazy",
	opts = {
		foldtext = {
			lineCount = {
				template = " %d",
			},
		},
		foldKeymaps = {
			setup = false,
		},
	}, -- required even when using default config

	-- recommended: disable vim's auto-folding
	init = function()
		vim.opt.fillchars = {
			foldopen = "",
			foldclose = "",
			foldsep = " ",
		}

		vim.o.foldenable = true
	end,
}
