return {
	options = {
		-- Set to true to ignore errors
		ignore_errors = true,
		-- Map of treesitter language to filetype
		lang_to_ft = {
			bash = "sh",
		},
		-- Map of treesitter language to file extension
		-- A temporary file name with this extension will be generated during formatting
		-- because some formatters care about the filename.
		lang_to_ext = {
			bash = "sh",
			c_sharp = "cs",
			elixir = "exs",
			javascript = "js",
			javascriptreact = "jsx",
			html = "html",
			julia = "jl",
			latex = "tex",
			markdown = "md",
			python = "py",
			ruby = "rb",
			rust = "rs",
			teal = "tl",
			typescript = "ts",
		},
		-- Map of treesitter language to formatters to use
		-- (defaults to the value from formatters_by_ft)
		lang_to_formatters = {
			html = { "prettier", "injected" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
		},
	},
}
