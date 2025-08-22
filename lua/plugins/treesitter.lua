return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local config = require('nvim-treesitter.configs')

      config.setup {
        ensure_installed = { "typescript", "javascript", "lua", "vim", "vimdoc", "query", "python" },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end
  }
