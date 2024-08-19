local env = {}

env["Badhi/nvim-treesitter-cpp-tools"] = {
	dependencies = { "nvim-treesitter/nvim-treesitter" },
}

env["gsuuon/model.nvim"] = {
	-- Don't need these if lazy = false
	cmd = { "M", "Model", "Mchat" },
	init = function()
		vim.filetype.add({
			extension = {
				mchat = "mchat",
			},
		})
	end,
	config = require("configs.helper.model"),
	ft = "mchat",
}

return env
