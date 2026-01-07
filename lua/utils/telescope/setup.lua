local actions = require("telescope.actions")
require('telescope').setup{
	defaults = {
		prompt_prefix = "🔍 ",
		selection_caret = "❯",
		mappings = {
			i = {
				["<C-o>"] = actions.move_selection_next,
				["<C-w>"] = actions.move_selection_previous,
			},
			n = {
				["o"] = actions.move_selection_next,
				["w"] = actions.move_selection_previous,
			}
		}
	}
}
