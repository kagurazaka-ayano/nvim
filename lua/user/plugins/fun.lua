local fun = {}

fun["vyfor/cord.nvim"] = {
	event = "BufRead",
	lazy = true,
	build = "./build || .\\build",
	config = require("configs.fun.cord"), -- calls require('cord').setup()
	branch = "client-server", -- must be this because this is recommended
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

return fun
