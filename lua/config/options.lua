vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.wo.colorcolumn = "150"

vim.opt.termguicolors = true
vim.diagnostic.config({
  virtual_text = true
})

vim.keymap.set("n", "<leader>i", "<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>")
