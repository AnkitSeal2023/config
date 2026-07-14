return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "typescript", "tsx" }, -- Ensure parsers are downloaded
		indent = {
			enable = true, -- Turn on Treesitter-driven indentation
		},
	},
}
