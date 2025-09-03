return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it status" })
      vim.keymap.set("n", "<leader>gb", vim.cmd.GBrowse, { desc = "[G]it browse" })
      vim.keymap.set("n", "<leader>gl", vim.cmd.Gclog, { desc = "[G]it browse" })
      vim.keymap.set("n", "<leader>gp", ":Git pull<CR>", { desc = "[G]it pull" })
      vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "[G]it pull" })
      vim.keymap.set("n", "<leader>gw", ":Gwrite<CR>", { desc = "[G]it pull" })
      vim.keymap.set("n", "<leader>gr", ":Gread<CR>", { desc = "[G]it pull" })
      vim.keymap.set("n", "<leader>gdp", ":dp<CR>", { desc = "[G]it pull" })
      vim.keymap.set("n", "<leader>gdg", ":do<CR>", { desc = "[G]it pull" })
      vim.keymap.set("n", "<leader>gph", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>glb", ":Gitsigns toggle_current_line_blame<CR>", {})
    end,
  },
  {
    "tpope/vim-fugitive",
    options = {},
  },
}
