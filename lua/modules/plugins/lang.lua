local lang = {}

lang["kevinhwang91/nvim-bqf"] = {
	lazy = true,
	ft = "qf",
	config = require("lang.bqf"),
	dependencies = {
		{ "junegunn/fzf", build = ":call fzf#install()" },
	},
}

lang["iamcco/markdown-preview.nvim"] = {
	lazy = true,
	ft = "markdown",
	build = ":call mkdp#util#install()",
}
lang["chrisbra/csv.vim"] = {
	lazy = true,
	ft = "csv",
}
return lang
