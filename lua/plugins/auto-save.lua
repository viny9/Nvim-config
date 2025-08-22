return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      enabled = false,
      -- trigger_events = { "InsertLeave", "TextChanged" }, -- vim events that trigger auto-save.

      execution_message = {
        message = function() -- message to print on save
          return ("Saved at: " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,           -- dim the color of `message`
        cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
      },
    })
  end,
}
