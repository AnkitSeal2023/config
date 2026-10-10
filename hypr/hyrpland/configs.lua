hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 5,

		border_size = 1,

		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},

		resize_on_border = false,
		allow_tearing = false,
		-- layout = "dwindle",
		layout = "hy3",
	},

	plugin = {
		hy3 = {
			no_gaps_when_only = 0,
			autotile = {
				enable = true,
				workspaces = "all",
			},
			tabs = {
				height = 5,
				from_top = true,
				opacity = 0.6,
				radius = 15,
				border_width = 2,
				text_height = 8,
				render_text = false,
				colors = {
					active = "rgba(33ccffee)",
					active_border = "rgba(33ccffee)",
					inactive = "rgba(606060aa)",
					inactive_border = "rgba(606060aa)",
					focused = "rgba(808080ee)",
					focused_border = "rgba(808080ee)",
				},
			},
		},
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 0.95,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})
