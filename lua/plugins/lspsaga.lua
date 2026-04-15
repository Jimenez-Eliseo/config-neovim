return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("lspsaga").setup({
			hover = {
				max_width = 0.5,
				max_height = 0.4,
			},
		})

		vim.keymap.set("n", "<leader>k", "<Cmd>Lspsaga hover_doc<CR>", { silent = true })
		vim.keymap.set("n", "<leader>b", "<Cmd>Lspsaga goto_definition<CR>", { silent = true })
		vim.keymap.set("n", "<leader>r", "<Cmd>Lspsaga lsp_finder<CR>", { silent = true })
	end,
}
