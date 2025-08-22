return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.eslint,
			},
		})

		vim.keymap.set({ "n", "v" }, "<A-F>", vim.lsp.buf.format, {})
	end,
}
