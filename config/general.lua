local wezterm = require("wezterm")
local act = wezterm.action

return {
	-- use_ime = true,
	-- adjust_window_size_when_changing_font_size = true,
	allow_square_glyphs_to_overflow_width = "Never",
	window_close_confirmation = "AlwaysPrompt",
	max_fps = 240,
	animation_fps = 1,

	-- leader = { key = "a", mods = "CTRL" },

	keys = {

		{
			key = "\\",
			mods = "CTRL",
			action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "|",
			mods = "SHIFT|CTRL",
			action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "LeftArrow",
			mods = "SHIFT|CTRL|CMD",
			action = act.AdjustPaneSize({ "Left", 10 }),
		},
		{
			key = "RightArrow",
			mods = "SHIFT|CTRL|CMD",
			action = act.AdjustPaneSize({ "Down", 10 }),
		},
		{ key = "UpArrow", mods = "SHIFT|CTRL|CMD", action = act.AdjustPaneSize({ "Up", 10 }) },
		{
			key = "RightArrow",
			mods = "SHIFT|CTRL|CMD",
			action = act.AdjustPaneSize({ "Right", 10 }),
		},
	},
}
