local lang = {}

lang["Hoffs/omnisharp-extended-lsp.nvim"] = {
	lazy = true,
	ft = { "csharp" },
}

lang["mrcjkb/rustaceanvim"] = {
	lazy = true,
	ft = { "rust" },
	versions = "^5",
}
-- lang["CrystalAlpha358/vim-mcfunction"] = {
-- 	pred = utils.file_exists("."),
-- 	lazy = true,
-- 	ft = { "mcfunction" },
-- }

lang["laurelmay/riscv.vim"] = {
	-- The ftdetect configuration does not work well when lazy-loaded
	lazy = false,
}

lang["pmizio/typescript-tools.nvim"] = {
	lazy = true,
	ft = { "typescript", "tsx" },
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {},
	config = require("configs.lang.typescript-tools"),
}

return lang
