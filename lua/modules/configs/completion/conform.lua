return function()
	local fmt = require("completion.formatting")
	require("conform").setup({
		options = {
			lang_to_ft = {
				bibtex = "bib",
			},
		},
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			javascript = { "prettierd", "prettier", stop_after_first = true, lsp_format = "fallback" },
			html = { "prettierd", "prettier", stop_after_first = true, lsp_format = "fallback" },
			tex = { "latexindent" },
			bibtex = { "bibtex-tidy" },
			cpp = { "clang-format" },
			c = { "clang-format" },
			h = { "clang-format" },
			hpp = { "clang-format" },
		},
		format_on_save = fmt.format_on_save_callback,
	})
end
