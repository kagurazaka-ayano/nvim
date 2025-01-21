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
	args = {
		"--stdin-filepath",
		"$FILENAME",
		"--config-precedence",
		"prefer-file",
		"--config",
		definitions.get_conf_path("prettier.json"),
	},
}
