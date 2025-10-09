return {
	"javiorfo/nvim-soil",

	dependencies = { "javiorfo/nvim-nyctophilia" },

	lazy = true,
	ft = "plantuml",
	opts = {
		actions = {
			redraw = false,
		},

		image = {
			darkmode = true, -- Enable or disable darkmode
			format = "png", -- Choose between png or svg

			execute_to_open = function(img)
				return "feh --scale-down " .. img
			end,
		},
	},
}
