-- Navegacion entre buffers
vim.keymap.set("n", "<leader>ff", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>aa", ":bp<CR>", { noremap = true, silent = true })

-- Para poder cerrar y abrir NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Para poder dejar una busqueda osea :noh
vim.keymap.set("n", "<leader>0", ":noh<CR>")

-- Para poder eliminar buffer actual
vim.keymap.set("n", "<leader>d", ":bd<CR>")

-- Navigation entre Buffers abiertos
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
