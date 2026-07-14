return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	priority = 1000,
	options = {
		multilines = {
			enabled = false,
			always_show = true,
			severity = { vim.diagnostic.severity.ERROR },
		},
	},
	config = function()
		-- require("tiny-inline-diagnostic").setup(options)
		require("tiny-inline-diagnostic").setup({
			options = {
				multilines = {
					enabled = false,
					always_show = true,
					severity = { vim.diagnostic.severity.ERROR },
				},
			},
			signs = {
				left = "",
				right = "",
				diag = "●",
				arrow = "    ",
				up_arrow = "    ",
				vertical = " │",
				vertical_end = " └",
			},
			blend = {
				factor = 0.22,
			},
		})
		vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
	end,
}
