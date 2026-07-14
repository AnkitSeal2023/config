return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {
		scope = {
			enabled = true,
			char = "│",
			injected_languages = true,
			-- Highlight group for the active scope line
			highlight = { "IblScope" },
		},
		enabled = true,
	},
	config = function(_, opts)
		-- Link the scope highlight to a highly visible color (e.g., Yellow/Orange)
		vim.api.nvim_set_hl(0, "IblScope", { fg = "#E5C07B" })

		require("ibl").setup(opts)
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
			callback = function(ev)
				local ok, parser = pcall(vim.treesitter.get_parser, ev.buf)
				if ok and parser then
					parser:parse()
				end
			end,
		})
	end,
}
