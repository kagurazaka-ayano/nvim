local env = {}

env["lervag/vimtex"] = {
	lazy = false,
	-- tag = "v2.15", -- uncomment to pin to a specific release
	config = require("configs.env.vimtex"),
	ft = "tex",
}

env["Civitasv/cmake-tools.nvim"] = {
	lazy = true,
	config = require("configs.env.cmake-tools"),
	ft = { "c", "cpp", "cxx", "cc", "cmake" },
}

env["HiPhish/gradle.nvim"] = {
	lazy = true,
	ft = { "gradle", "java" },
}

return env
