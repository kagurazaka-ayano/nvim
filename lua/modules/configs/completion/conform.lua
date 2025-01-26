return function()
	local fmt = require("completion.formatting")
	local args = require("user.configs.formatters")
	require("conform").setup({
		log_level = vim.log.levels.TRACE,
		options = {
			lang_to_ft = {
				bibtex = "bib",
				nixlang = "nix",
			},
		},
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			html = { "prettier", "injected", lsp_format = "never" },
			javascript = { "injected", lsp_format = "never" },
			javascriptreact = { "injected", lsp_format = "never" },
			tex = { "latexindent" },
			bibtex = { "bibtex-tidy" },
			cpp = { "clang-format" },
			c = { "clang-format" },
			h = { "clang-format" },
			hpp = { "clang-format" },
			nixlang = { "nixpkgs-fmt" },
		},
		formatters = args,
		format_on_save = fmt.format_on_save_callback,
	})
end
