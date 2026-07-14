return {
	"luukvbaal/statuscol.nvim",
	enabled = true,
	event = "VeryLazy",
	init = function()
		-- set fold options required for statuscolumn to hide the numbers:
		-- set foldcolum, fold indicators , allow lotsa folds
		vim.opt.foldcolumn = "1" -- Show one column for folding
		-- vim.opt.fillchars = "eob: ,fold: ,foldopen: ,foldsep: ,foldclose: " -- Customize fold marks, alt = +,-
		vim.opt.foldlevelstart = 99 -- Start folding at level 20
		vim.opt.foldlevel = 99
	end,
	opts = function()
		local builtin = require("statuscol.builtin")
		return {
			setopt = true,
			segments = {
				{ text = { builtin.foldfunc }, click = "v:lua.ScFa" },
				{ text = { "%s" }, click = "v:lua.ScSa" },
				{
					text = { builtin.lnumfunc, " " },
					condition = { true, builtin.not_empty },
					click = "v:lua.ScLa",
				},
			},
		}
	end,
}
