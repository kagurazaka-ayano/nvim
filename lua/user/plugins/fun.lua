local fun = {}

fun["andweeb/presence.nvim"] = {
	config = require("configs.fun.presence"),
}

fun["vyfor/cord.nvim"] = {
	build = "./build || .\\build",
	event = "VeryLazy",
	opts = require("configs.fun.cord"), -- calls require('cord').setup()
}

return fun
