return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
		filters = {
			dotfiles = false,
			custom = {},
			git_ignored = false,
		},
		update_focused_file = {
			enable = true,
			update_root = true,
		}
	})
  end,
}
