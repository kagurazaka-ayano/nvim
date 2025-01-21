local definitions = require("configs.formatters.definitions")
return {
	options = {
		ft_parsers = {
			javascript = "babel",
			javascriptreact = "babel",
			typescript = "typescript",
			typescriptreact = "typescript",
			html = "html",
		},
	},
	append_args = {
		"--config-precedence",
		"prefer-file",
		"--config",
		definitions.get_conf_path("prettier.json"),
	},
}
