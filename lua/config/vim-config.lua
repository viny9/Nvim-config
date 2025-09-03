vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.list = true
vim.opt.listchars = { tab = "| ", trail = "·", nbsp = "␣" }
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 5
vim.o.confirm = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.wrap = false

vim.opt.fillchars = { eob = " " }
vim.opt.swapfile = false

-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]

vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

vim.keymap.set({ "n", "v", "x" }, "<C-c>", '"+y', { noremap = true, silent = true, desc = "Yank to clipboard" })
vim.keymap.set({ "n", "v", "x" }, "<C-d>", "dd", { noremap = true, silent = true, desc = "Remove a line" })
