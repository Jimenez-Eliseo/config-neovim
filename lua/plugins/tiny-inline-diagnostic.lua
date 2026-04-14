return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	priority = 1000,
	config = function()
		require("tiny-inline-diagnostic").setup({
			options = {
				multilines = {
					enabled = true,
				},
				severity_sort = true, -- Ordenar por severidad
				prefix = {
					error = "🔴 ",
					warn = "🟡 ",
					hint = "💡 ",
					info = "🔵 ",
				},
			},
			signs = {
				error = "✘ ",
				warn = "⚠ ",
				hint = "⚡ ",
				info = "ℹ ",
			},
			hi = {
				error = "DiagnosticError",
				warn = "DiagnosticWarn",
				hint = "DiagnosticHint",
				info = "DiagnosticInfo",
			},
		})
	end,
}
