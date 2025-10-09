return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.comment").setup({})

		local MiniPick = require("mini.pick")
		MiniPick.setup({})

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
