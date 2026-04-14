return {
	"neovim/nvim-lspconfig",
	config = function()
		require("utils.lsp.rust")
		vim.lsp.enable({ "ts_ls", "rust_analyzer", "lua_ls" })
	end,
}
