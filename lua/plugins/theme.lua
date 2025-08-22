return {
	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("poimandres")
		end,
	},
	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vscode").setup({
				transparent = false,
				underline_links = true,
				disable_nvimtree_bg = true,
				terminal_colors = true,
			})

			-- vim.cmd.colorscheme("vscode")
		end,
	},
}
