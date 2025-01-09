local view = {}

view["3rd/image.nvim"] = {
	lazy = true,
	ft = "markdown",
	build = false,
	config = require("configs.view.image"),
}

view["Thiago4532/mdmath.nvim"] = {
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
}

return view
