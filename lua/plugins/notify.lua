return {
	"rcarriga/nvim-notify",
	config = function()
		local function break_lines(str, max_len)
			local result = {}

			for line in str:gmatch("[^\n]+") do
				while #line > max_len do
					table.insert(result, line:sub(1, max_len))
					line = line:sub(max_len + 1)
				end

				table.insert(result, line)
			end

			return table.concat(result, "\n")
		end

		local notify = require("notify")
		notify.setup({
			stages = "fade_in_slide_out",
			background_colour = "FloatShadow",
			timeout = 1500,
			max_width = 70,
			on_open = function(win)
				vim.api.nvim_win_set_option(win, "wrap", true)
			end,
		})

		vim.notify = function(msg, level, opts)
			local max_len = 70
			msg = break_lines(msg, max_len)
			notify(msg, level, opts)
		end
	end,
}
