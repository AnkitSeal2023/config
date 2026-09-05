local hy3 = hl.plugin.hy3

hy3.set_ephemeral(true)
-- hy3.auto_tile(true)
--
hl.bind(
	MainMod .. "+LEFT",
	hy3.move_focus("l", {
		warp = false,
	})
)
hl.bind(
	MainMod .. "+RIGHT",
	hy3.move_focus("r", {
		warp = false,
	})
)
hl.bind(
	MainMod .. "+UP",
	hy3.move_focus("u", {
		warp = false,
	})
)
hl.bind(
	MainMod .. "+DOWN",
	hy3.move_focus("d", {
		warp = false,
	})
)

hl.bind(
	MainMod .. " + h",
	hy3.move_focus("l", {
		warp = false,
	})
)
hl.bind(
	MainMod .. " + l",
	hy3.move_focus("r", {
		warp = false,
	})
)
hl.bind(
	MainMod .. " + k",
	hy3.move_focus("u", {
		warp = false,
	})
)
hl.bind(
	MainMod .. " + j",
	hy3.move_focus("d", {
		warp = false,
	})
)
hl.bind(
	MainMod .. " + SHIFT + h",
	hy3.move_window("l", {
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + l",
	hy3.move_window("r", {
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + k",
	hy3.move_window("u", {
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + j",
	hy3.move_window("d", {
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + LEFT",
	hy3.move_window("l", {
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + RIGHT",
	hy3.move_window("r", {
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + UP",
	hy3.move_window("u", {
		once = true, -- default: false
	})
)
hl.bind(
	MainMod .. " + SHIFT + DOWN",
	hy3.move_window("d", {
		once = true, -- default: false
	})
)

hl.bind(MainMod .. " + W", hy3.make_group("tab", { toggle = true }))
