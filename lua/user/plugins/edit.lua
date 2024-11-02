local edit = {}

edit["kylechui/nvim-surround"] = {
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
		})
	end,
}

edit["danymat/neogen"] = {
	event = "BufRead",
	config = function()
		require("neogen").setup({
			enabled = true,
			input_after_comment = true,
			snippet_engine = "luasnip",
			languages = {
				["cpp.doxygen"] = require("neogen.configurations.cpp"),
				cs = {
					template = {
						annotation_convention = "xmldoc",
					},
				},
			},
		})
	end,
}

return edit
