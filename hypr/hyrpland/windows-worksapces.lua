--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "3", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "7", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "8", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "9", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "11", monitor = "myvirt", default = true })
hl.workspace_rule({ workspace = "12", monitor = "myvirt", default = true })
hl.workspace_rule({ workspace = "13", monitor = "myvirt", default = true })
hl.workspace_rule({ workspace = "14", monitor = "myvirt", default = true })
hl.workspace_rule({ workspace = "16", monitor = "myvirt", default = true })
hl.workspace_rule({ workspace = "17", monitor = "myvirt", default = true })
hl.workspace_rule({ workspace = "18", monitor = "myvirt", default = true })
hl.workspace_rule({ workspace = "19", monitor = "myvirt", default = true })
hl.workspace_rule({ workspace = "20", monitor = "myvirt", default = true })

-- resize a window:
hl.bind("SUPER + R", hl.dsp.submap("resize"))

hl.define_submap("resize", function()
	hl.bind("right", hl.dsp.window.resize({ relative = true, x = 130, y = 0 }))
	hl.bind("left", hl.dsp.window.resize({ relative = true, x = -130, y = 0 }))
	hl.bind("up", hl.dsp.window.resize({ relative = true, x = 0, y = -130 }))
	hl.bind("down", hl.dsp.window.resize({ relative = true, x = 0, y = 130 }))

	hl.bind("RETURN", hl.dsp.submap("reset"))
end)

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})
