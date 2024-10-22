local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		-- { family = "Zed Mono", assume_emoji_presentation = false },
		{
			family = "JetBrains Mono",
			-- assume_emoji_presentation = true,
		},
		{ family = "UDEV Gothic 35JPDOC" },
	}),
	font_size = 18,
	-- harfbuzz_features = { "calt=0", "clig=1", "liga=0" },
}
