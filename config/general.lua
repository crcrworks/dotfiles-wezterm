local wezterm = require("wezterm")

return {
	-- use_ime = true,
	-- adjust_window_size_when_changing_font_size = true,
	allow_square_glyphs_to_overflow_width = "Never",
	window_close_confirmation = "NeverPrompt",
	max_fps = 165,

	keys = {
		-- This will create a new split and run your default program inside it
		{
			key = "p",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = '"',
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
	},
}
