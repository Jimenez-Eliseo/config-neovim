return {
	"xiyaowong/transparent.nvim",
	lazy = false, -- Se recomienda no usar lazy-loading para este plugin
	opts = {
		-- Grupos extra que podrías querer transparentar (ej. NeoTree, Telescope)
		extra_groups = {
			"NormalFloat",
			"NvimTreeNormal",
			"NeoTreeNormal",
			"NeoTreeNormalNC",
		},
		exclude_groups = {}, -- Grupos que NO quieres transparentar
	},
	config = function(_, opts)
		require("transparent").setup(opts)
		-- Comando opcional para asegurar que se active al iniciar
		vim.cmd("TransparentEnable")
	end,
}
