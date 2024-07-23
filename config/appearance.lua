local wezterm = require("wezterm")

local function tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab, tabs, panes, conf, hover, max_width)
	local background = "#2D353B"
	local foreground = "#D3C6AA"
	local edge_background = "#2D353B"

	if tab.is_active or hover then
		background = "#83c092"
		foreground = "#2D353B"
	end
	local edge_foreground = background

	local title = tab_title(tab)

	-- ensure that the titles fit in the available space,
	-- and that we have room for the edges.

	local max = 20 - 9
	if #title > max then
		title = wezterm.truncate_right(title, max) .. "…"
	end

	return {
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = " " },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Attribute = { Intensity = tab.is_active and "Bold" or "Normal" } },
		{ Text = " " .. (tab.tab_index + 1) .. ": " .. title .. " " },
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = "" },
	}
end)

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
	colors = {
		tab_bar = {
			background = "#2D353B",
		},
	},
	tab_bar_style = {},
	window_frame = {
		border_bottom_height = "0.5cell",
		font_size = 5.0,
	},

	initial_rows = 50,
	initial_cols = 100,
	tab_max_width = 20,
	show_tabs_in_tab_bar = true,
	show_tab_index_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	show_new_tab_button_in_tab_bar = false,
}
