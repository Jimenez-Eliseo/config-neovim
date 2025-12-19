vim.keymap.set("n", "gb", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gB", ":bp<CR>", { noremap = true, silent = true })

-- Para poder cerrar y abrir NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
