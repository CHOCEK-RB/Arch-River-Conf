return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.starter").setup()
		require("mini.comment").setup({})
		require("mini.indentscope").setup({
			symbol = "│",
		})
		require("mini.hipatterns").setup({
			highlighters = {
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})

		require("mini.tabline").setup()
	end,
}
