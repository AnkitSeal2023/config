local hy3 = hl.plugin.hy3

hy3.set_ephemeral(true)
--
hl.bind(
	MainMod .. "+LEFT",
	hy3.move_focus("l", {
		visible = true, -- default: false
		warp = false,
	})
)
hl.bind(
	MainMod .. "+RIGHT",
	hy3.move_focus("r", {
		visible = true, -- default: false
		warp = false,
	})
)
hl.bind(
	MainMod .. "+UP",
	hy3.move_focus("u", {
		visible = true, -- default: false
		warp = false,
	})
)
hl.bind(
	MainMod .. "+DOWN",
	hy3.move_focus("d", {
		visible = true, -- default: false
		warp = false,
	})
)

hl.bind(
	MainMod .. " + h",
	hy3.move_focus("l", {
		visible = true, -- default: false
		warp = false,
	})
)
hl.bind(
	MainMod .. " + l",
	hy3.move_focus("r", {
		visible = true, -- default: false
		warp = false,
	})
)
hl.bind(
	MainMod .. " + k",
	hy3.move_focus("u", {
		visible = true, -- default: false
		warp = false,
	})
)
hl.bind(
	MainMod .. " + j",
	hy3.move_focus("d", {
		visible = true, -- default: false
		warp = false,
	})
)
hl.bind(
	MainMod .. " + SHIFT + h",
	hy3.move_window("l", {
		visible = true, -- default: false
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + l",
	hy3.move_window("r", {
		visible = true, -- default: false
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + k",
	hy3.move_window("u", {
		visible = true, -- default: false
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + j",
	hy3.move_window("d", {
		visible = true, -- default: false
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + LEFT",
	hy3.move_window("l", {
		visible = true, -- default: false
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + RIGHT",
	hy3.move_window("r", {
		visible = true, -- default: false
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + UP",
	hy3.move_window("u", {
		visible = true, -- default: false
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + DOWN",
	hy3.move_window("d", {
		visible = true, -- default: false
		once = true, -- default: false
	})
)
--
-- hy3.toggle_focus_layer({
-- 	warp = true | false, -- default: true
-- })
--
-- hy3.move_window("l" | "r" | "u" | "d" | "left" | "right" | "up" | "down", {
-- 	once = true | false, -- default: false
-- 	visible = true | false, -- default: false
-- })
--
-- hy3.move_to_workspace("<workspace>", {
-- 	follow = true | false, -- default: false
-- 	warp = true | false, -- default: follows cursor:no_warps when follow = true
-- })
--
-- hy3.change_focus("top" | "bottom" | "raise" | "lower" | "tab" | "tabnode")
--
-- -- direction and index are mutually exclusive
-- hy3.focus_tab({
-- 	direction = "l" | "r" | "left" | "right",
-- 	mouse = "ignore" | "prioritize_hovered" | "require_hovered", -- default: "ignore"
-- 	wrap = true | false, -- default: false
-- })
--
-- hy3.set_swallow(true | false | "true" | "false" | "toggle")
--
-- hy3.kill_active()
--
-- hy3.expand("expand" | "shrink" | "base" | "maximize" | "fullscreen", {
-- 	fullscreen = "" | "intermediate_maximize" | "fullscreen_maximize" | "maximize_only",
-- })
--
-- hy3.lock_tab(nil | "" | "toggle" | "lock" | "unlock")
--
-- hy3.equalize({
-- 	scope = "" | "group" | "workspace", -- default: "group"
-- 	workspace = true | false, -- overrides scope if present
-- 	recursive = true | false, -- overrides workspace if present
-- })
--
-- hy3.debug_nodes()
--
--
