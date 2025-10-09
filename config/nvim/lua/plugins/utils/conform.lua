return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				css = { "prettier" },
				html = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				svelte = { "prettier" },
				json = { "prettier" },
				bash = { "shfmt", "shellcheck" },
				zsh = { "shfmt", "shellcheck" },
				sh = { "shfmt", "shellcheck" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
	},
}
