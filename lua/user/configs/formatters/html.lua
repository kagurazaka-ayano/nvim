local definitions = require("configs.formatters.definitions")
return {
	append_args = {
		"--config",
		definitions.get_conf_path("html"),
	},
}
