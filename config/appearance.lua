local wezterm = require("wezterm")
local custom_colors = require("colors.custom")

return {
	color_scheme = "Everforest Dark (Gogh)",

	-- force_reverse_video_cursor = true,

	window_decorations = "RESIZE",
	cell_width = 1.0,
	line_height = 1.0,

	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},

	initial_rows = 50,
	initial_cols = 100,

	show_tabs_in_tab_bar = true,
	-- hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = true,
	tab_bar_at_bottom = true,
	show_new_tab_button_in_tab_bar = false,
}
