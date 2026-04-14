return {
	"isakbm/gitgraph.nvim",
	opts = {
		symbols = { merge_commit = "", commit = "●" },
		format = {
			timestamp = "%d/%m/%Y %H:%M",
			fields = { "hash", "author", "timestamp", "subject" },
		},
		log = { style = "graph", date = "relative" },
	},
	keys = {
		{ "<leader>gv", "<cmd>lua require('gitgraph').draw({}, { all = true })<cr>", desc = "Git Graph" },
	},
}
