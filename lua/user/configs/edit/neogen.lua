return function()
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
end
