local env = {}

env["lervag/vimtex"] = {
	-- no lazy load because inverse search doesn't work well
	lazy = false,
	-- tag = "v2.15", -- uncomment to pin to a specific release
	config = require("configs.env.vimtex"),
	ft = { "tex", "sty" },
}

env["Civitasv/cmake-tools.nvim"] = {
	lazy = true,
	config = require("configs.env.cmake-tools"),
	ft = { "c", "cpp", "cxx", "cc", "cmake" },
}

env["anurag3301/nvim-platformio.lua"] = {
	lazy = true,
	dependencies = {
		"akinsho/nvim-toggleterm.lua",
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = require("configs.lang.nvim-platformio"),
	cmd = {
		"Pioinit",
		"Piorun",
		"Piocmd",
		"Piolib",
		"Piomon",
		"Piodebug",
		"Piodb",
	},
}

return env
