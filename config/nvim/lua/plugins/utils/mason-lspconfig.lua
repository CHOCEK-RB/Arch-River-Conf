return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
			"cssls",
			"phpactor",
			"pyright",
			"clangd",
			"svelte",
			"ts_ls",
			"jdtls",
			"tailwindcss",
			"jsonls",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
