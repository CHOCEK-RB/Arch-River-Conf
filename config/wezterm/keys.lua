local wezterm = require("wezterm")
local act = wezterm.action

local workspace = {
	{ key = "1", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "3", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "4", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "5", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "6", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "7", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "8", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "9", mods = "ALT", action = act.ActivateTab(0) },
}

local splitH = {
	key = "|",
	mods = "LEADER|CTRL",
	action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
}

local keys = {
	{ key = "1", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = act.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = act.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = act.ActivateTab(3) },
	{ key = "5", mods = "ALT", action = act.ActivateTab(4) },
	{ key = "6", mods = "ALT", action = act.ActivateTab(5) },
	{ key = "7", mods = "ALT", action = act.ActivateTab(6) },
	{ key = "8", mods = "ALT", action = act.ActivateTab(7) },
	{ key = "9", mods = "ALT", action = act.ActivateTab(8) },
	splitH,
}

return keys
