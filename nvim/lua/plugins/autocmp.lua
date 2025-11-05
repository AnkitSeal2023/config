return { -- Autocompletion
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		-- Snippet Engine
		{
			"L3MON4D3/LuaSnip",
			version = "2.*",
			build = (function()
				if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
					return
				end
				return "make install_jsregexp"
			end)(),
			dependencies = {
				{
					"rafamadriz/friendly-snippets",
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load()
					end,
				},
			},
			opts = {},
		},
		"folke/lazydev.nvim",
	},
	--- @module 'blink.cmp'
	--- @type blink.cmp.Config
	opts = {
		keymap = {
			preset = "default",
		},

		appearance = {
			nerd_font_variant = "mono",
		},
		cmdline = {
			keymap = {
				["<Tab>"] = { "show", "accept" },
				["<Up>"] = { "select_prev" },
				["<Down>"] = { "select_next" },
				["<C-n>"] = { "select_next" },
				["<C-p>"] = { "select_prev" },
			},
			completion = {
				menu = {
					auto_show = function(ctx)
						return vim.fn.getcmdtype() == ":"
					end,
				},
			},
		},
		lsp = {
			fallback_to_word = true,
			insert_replace_support = true,
		},
		completion = {
			-- By default, you may press `<c-space>` to show the documentation.
			auto_show = true,
			expand_snippet_on_overwrite = false,

			documentation = { auto_show = false, auto_show_delay_ms = 500 },
		},

		sources = {
			default = { "lsp", "path", "snippets", "lazydev", "buffer" },
			providers = {
				lsp = { module = "blink.cmp.sources.lsp" },

				lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
			},
		},

		snippets = { preset = "luasnip" },
		fuzzy = { implementation = "prefer_rust_with_warning" },
		signature = { enabled = true },
	},
}
