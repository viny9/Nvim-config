vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.opt.fillchars = { eob = " " }
vim.opt.swapfile = false

-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.keymap.set({ "n", "v", "x" }, "<C-c>", '"+y', { noremap = true, silent = true, desc = "Yank to clipboard" })
vim.keymap.set({ "n", "v", "x" }, "<C-d>", "dd", { noremap = true, silent = true, desc = "Remove a line" })
