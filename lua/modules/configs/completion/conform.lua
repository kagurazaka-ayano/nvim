return function()
	local fmt = require("completion.formatting")
	local args = require("user.configs.formatters.package")
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
			html = { "injected", lsp_format = "never" },
			javascript = { "injected", lsp_format = "never" },
			javascriptreact = { "injected", lsp_format = "never" },
			tex = { "latexindent" },
			bibtex = { "bibtex-tidy" },
			cpp = { "clang-format" },
			c = { "clang-format" },
			h = { "clang-format" },
			hpp = { "clang-format" },
		},
		formatters = args,
		format_on_save = fmt.format_on_save_callback,
	})
end
