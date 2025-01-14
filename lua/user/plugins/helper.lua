local tool = {}

tool["CopilotC-Nvim/CopilotChat.nvim"] = {
	branch = "main",
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
	cmd = {
		"CopilotChat",
		"CopilotChatOpen",
		"CopilotChatClose",
		"CopilotChatToggle",
		"CopilotChatStop",
		"CopilotChatReset",
		"CopilotChatSave",
		"CopilotChatLoad",
		"CopilotChatDebugInfo",
		"CopilotChatModels",
		"CopilotChatAgents",
		"CopilotChatExplain",
	},
}

return tool
