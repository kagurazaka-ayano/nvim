local env = {}

env["lervag/vimtex"] = {
	lazy = true, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function() end,
	config = require("configs.env.vimtex"),
	ft = "tex",
}

env["Civitasv/cmake-tools.nvim"] = {
	lazy = true,
	init = function() end,
	config = require("configs.env.cmake-tools"),
	ft = { "c", "cpp", "cxx", "cc", "cmake" },
}

env["alepez/vim-gtest"] = {
	init = function() end,
	ft = { "c", "cpp" },
}

return env
