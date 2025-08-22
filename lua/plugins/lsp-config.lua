return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = true,
				ensure_installed = { "lua_ls", "ts_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.diagnostic.config({
				virtual_text = {
					prefix = "■", -- Could be '■', '▶', etc.
					spacing = 1,
				},
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})

			local lspconfig = require("lspconfig")
			lspconfig.ts_ls.setup({})
			lspconfig.solargraph.setup({})
			lspconfig.html.setup({})
			lspconfig.lua_ls.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "df", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
