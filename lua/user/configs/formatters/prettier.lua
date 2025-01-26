local parent_dir = require("core.global").vim_path .. "/user/configs/formatters/"
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
		parent_dir .. "conf/prettier.json",
	},
}
