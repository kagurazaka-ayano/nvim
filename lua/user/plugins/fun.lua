local fun = {}

fun["vyfor/cord.nvim"] = {
	build = ":Cord update",
	config = require("configs.fun.cord"),
	branch = "client-server", -- must be this because this is recommended
	dependencies = { "https://github.com/lunarmodules/luafilesystem" },
}

return fun
