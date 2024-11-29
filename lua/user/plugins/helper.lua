local tool = {}

tool["CopilotC-Nvim/CopilotChat.nvim"] = {
	"CopilotC-Nvim/CopilotChat.nvim",
	branch = "canary",
	dependencies = {
		{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
		{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
	},
	build = "make tiktoken", -- Only on MacOS or Linux
	opts = {
		debug = true, -- Enable debugging
		-- See Configuration section for rest
	},
	Lazy = true,
	event = "BufEnter",
}

return tool
