local wezterm = require("wezterm")

local theme = require("theme2")
local keys = require("keys")

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.font_size = 18

config.font = wezterm.font("Monaspace Radon")

config.leader = { key = "|", mods = "CTRL", timeout_milliseconds = 2000 }

config.keys = keys

config.colors = theme.colors
config.force_reverse_video_cursor = theme.force_reverse_video_cursor

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.window_decorations = "NONE"

return config
