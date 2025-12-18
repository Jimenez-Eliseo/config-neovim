return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ':TSUpdate',
  confic = function()
	  require("nvim-treesitter").setup {
		  ensure_installed = { "lua", "markdown", "query", "typescript", "javascript", "rust", "tsx", "html", "css", },
		  sync_install = false,
		  auto_install = true,

		  highlight = {
			  enable = true,
			  additional_vim_regex_highlighting = false,
		  },
	  }
  end
}
