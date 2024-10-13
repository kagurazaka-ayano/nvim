local lang = {}

lang["nvim-java/nvim-java"] = {
	lazy = true,
	ft = { "java", "gradle" },
	init = function()
		require("lspconfig").jdtls.setup({})
	end,
	config = require("configs.lang.nvim-java"),
}

return lang
