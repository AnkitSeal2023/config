-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
local closeWindowBind = hl.bind(MainMod .. " + Q", hl.dsp.window.close())
hl.bind(
	MainMod .. " + SHIFT + E",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
hl.bind(MainMod .. " + T", hl.dsp.exec_cmd(Terminal))
hl.bind(MainMod .. " + SHIFT + S", hl.dsp.exec_cmd("flameshot gui"), { locked = true })
hl.bind(MainMod .. " + SHIFT + A", hl.dsp.exec_cmd("smile"), { locked = true })
hl.bind(MainMod .. " + SHIFT + V", hl.dsp.exec_cmd("copyq toggle"), { locked = true })
hl.bind(MainMod .. " + N", hl.dsp.exec_cmd("wayle notify dnd"), { locked = true })
hl.bind(MainMod .. " + E", hl.dsp.exec_cmd(FileManager))
hl.bind(MainMod .. " + A", hl.dsp.exec_cmd(Menu))
hl.bind(MainMod .. " + B", hl.dsp.exec_cmd("zen-browser"))

hl.bind(MainMod .. " + SHIFT+ SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MainMod .. " + P", hl.dsp.window.pseudo())

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(MainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(MainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind("ALT + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind("ALT + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind("ALT + W", hl.dsp.workspace.toggle_special("whatsapp"))
hl.bind("ALT + SHIFT + W", hl.dsp.window.move({ workspace = "special:whatsapp" }))
hl.bind("ALT + N", hl.dsp.workspace.toggle_special("notes"))
hl.bind("ALT + SHIFT + N", hl.dsp.window.move({ workspace = "special:notes" }))
hl.bind("ALT + M", hl.dsp.workspace.toggle_special("music"))
hl.bind("ALT + SHIFT + M", hl.dsp.window.move({ workspace = "special:music" }))

hl.bind(MainMod .. " + CTRL + Right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MainMod .. " + CTRL + Left", hl.dsp.focus({ workspace = "e-1" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(MainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(MainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(MainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)

hl.bind(
	MainMod .. " + m",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind(MainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"), { locked = true })
