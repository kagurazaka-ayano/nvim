local utility = {}

utility["kawre/leetcode.nvim"] = {
	lazy = true,
	cmd = "Leet",
	build = ":TSUpdate html",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim", -- required by telescope
		"MunifTanjim/nui.nvim",

		-- optional
		"nvim-treesitter/nvim-treesitter",
		"rcarriga/nvim-notify",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		-- configuration goes here
	},
}

utility["krady21/compiler-explorer.nvim"] = {
	lazy = true,
	cmd = {
		"CECompile",
		"CECompileLive",
		"CEFormat",
		"CEAddLibrary",
		"CELoadExample",
		"CEOpenWebsite",
		"CEDeleteCache",
		"CEShowTooltip",
		"CEGotoLabel",
	},
}

return utility
