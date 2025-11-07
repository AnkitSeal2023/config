return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		always_show_tabline = true,
		-- always_show_tabline = false,
		-- globalstatus = false,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
			refresh_time = 16, -- ~60fps
			events = {
				"WinEnter",
				"BufEnter",
				"BufWritePost",
				"SessionLoadPost",
				"FileChangedShellPost",
				"VimResized",
				"Filetype",
				"CursorMoved",
				"CursorMovedI",
				"ModeChanged",
			},
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		-- lualine_c = { "filename" },
		lualine_x = { "encoding", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		-- lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {
		lualine_a = {
			{
				"buffers",
				mode = 2,
				use_mode_colors = true,
				max_length = vim.o.columns - 1,

				fmt = function(name)
					local devicons = require("nvim-web-devicons")
					local icon = devicons.get_icon(name) or ""
					return icon .. " " .. name
				end,
			},
		},
		lualine_b = {
			{
				"tabs",
				mode = 1, -- 1: show tab index
				use_mode_colors = true, -- use theme colors for active tab
				component_separators = { left = ">", right = "|" },
				section_separators = { left = ")", right = "(" },
				max_length = vim.o.columns - 1, -- stretch to almost full width
				symbols = { modified = "+", alternate_file = "#" },
				path = 0,
				fmt = function(name, context)
					-- add icon to left of active filename
					local devicons = require("nvim-web-devicons")
					local icon, _ = devicons.get_icon(name, nil, { default = true })
					return icon .. " " .. name
				end,
			},
		},
	},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
}
