return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",   -- optional, but recommended
  },
  lazy = false,                      -- neo-tree will lazily load itself
  config = function()
    local neotree = require("neo-tree")
    neotree.setup({
      filesystem = {
        filtered_items = {
          visible = true, -- hide filtered items on open
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = { ".git" },
        },
      },
    })

    vim.keymap.set('n', '<C-b>', ':Neotree toggle filesystem left<CR>', {})
  end
}
