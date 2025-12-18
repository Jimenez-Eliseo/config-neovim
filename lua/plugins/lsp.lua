return {
  "https://github.com/neovim/nvim-lspconfig",
  config = function()
	vim.lsp.enable({ "ts_ls" })	  
  end
  
}
