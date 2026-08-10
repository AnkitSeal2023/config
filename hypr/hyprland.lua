Terminal = "kitty"
FileManager = "thunar"
Menu = "rofi -modi drun,run -show drun"
MainMod = "SUPER" -- Sets "Windows" key as main modifier

require("hyrpland.autostart")
require("hyrpland.configs")
require("hyrpland.animations")
require("hyrpland.hy3")
require("hyrpland.keybinds")
require("hyrpland.windows-worksapces")

---- MONITORS ----
hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@100",
	position = "0x0",
	scale = "1",
})

hl.monitor({
	output = "myvirt",
	mode = "1920x1080@60",
	position = "1920x0",
	scale = "1",
})

---- ENVIRONMENT VARIABLES ----
hl.env("GTK_THEME", "Dracula")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XCURSOR_THEME", "Future-cyan-cursors")
hl.env("HYPRCURSOR_THEME", "Future-cyan-cursors")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

hl.config({
	master = {
		new_status = "master",
	},
})

hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})

hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
})

---- INPUT ----
hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
