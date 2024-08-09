local lang = {}

lang["toppair/peek.nvim"] = {
	event = { "VeryLazy" },
	build = "deno task --quiet build:fast",
	config = require("configs.lang.peek"),
}

return lang
