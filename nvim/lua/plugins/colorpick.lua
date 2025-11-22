return {
	{
		"uga-rosa/ccc.nvim",

		config = function()
			-- Enable true color
			vim.opt.termguicolors = true

			local ccc = require("ccc")

			ccc.setup({
				highlighter = {
					auto_enable = true,
					lsp = true,
				},
			})
		end,
	},
}
