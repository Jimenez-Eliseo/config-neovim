return {
  "neovim/nvim-lspconfig",
  config = function()
	vim.lsp.enable({ "ts_ls", "rust_analyzer" })	  
  end
}
