return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",

		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local border = {
			{ "┌", "FloatBorder" },
			{ "─", "FloatBorder" },
			{ "┐", "FloatBorder" },
			{ "│", "FloatBorder" },
			{ "┘", "FloatBorder" },
			{ "─", "FloatBorder" },
			{ "└", "FloatBorder" },
			{ "│", "FloatBorder" },
		}

		local handlers = {
			["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
			["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
		}

		-- 3. Configuración de Diagnósticos (iconos y popups)
		local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end

		vim.diagnostic.config({
			virtual_text = true,
			signs = { active = signs },
			float = { border = border },
			underline = true,
			update_in_insert = true,
			severity_sort = true,
		})

		-- 4. Aseguramos los bordes en el menú de autocompletado de nvim-cmp
		require("cmp").setup({
			window = {
				completion = require("cmp").config.window.bordered(),
				documentation = require("cmp").config.window.bordered(),
			},
		})

		-- 5. Función on_attach (sin cambios)
		local on_attach = function(_, bufnr)
			local keymap = vim.keymap.set
			local opts = { buffer = bufnr }

			keymap("n", "K", vim.lsp.buf.hover, opts)
			keymap("n", "gd", vim.lsp.buf.definition, opts)
			keymap("n", "gr", vim.lsp.buf.references, opts)
			keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
			keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
			keymap("n", "[d", vim.diagnostic.goto_prev, opts)
			keymap("n", "]d", vim.diagnostic.goto_next, opts)
		end

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"html",
				"cssls",
				"jsonls",
				"pyright",
				"rust_analyzer",
				"phpactor",
				"clangd",
				"svelte",
				"jdtls",
				"tailwindcss",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						on_attach = on_attach,
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
						handlers = handlers,
					})
				end,

				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup({
						on_attach = on_attach,
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
						handlers = handlers,
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
							},
						},
					})
				end,
			},
		})
	end,
}
