local lang = {}

lang["nvim-java/nvim-java"] = {
	lazy = true,
	ft = { "java", "gradle" },
	init = function()
		require("lspconfig").jdtls.setup({})
	end,
	config = require("configs.lang.nvim-java"),
}

lang["Hoffs/omnisharp-extended-lsp.nvim"] = {
	lazy = true,
	ft = { "csharp" },
}

lang["mrcjkb/rustaceanvim"] = {
	versions = "^5",
}
lang["CrystalAlpha358/vim-mcfunction"] = {
	lazy = true,
	ft = { "mcfunction" },
}

lang["laurelmay/riscv.vim"] = {
	lazy = false,
}

return lang
