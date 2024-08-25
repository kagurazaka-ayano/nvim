local lang = {}

lang["nvim-java/nvim-java"] = {
	ft = { "java", "gradle" },
	init = function()
		require("java").setup()
		require("lspconfig").jdtls.setup({})
	end,
	config = require("configs.lang.nvim-java"),
}

return lang
