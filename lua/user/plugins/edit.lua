local edit = {}

edit["kylechui/nvim-surround"] = {
	lazy = true,
	event = "BufEnter",
	config = require("configs.edit.nvim-surround"),
}

edit["danymat/neogen"] = {
	lazy = true,
	cmd = "Neogen",
	config = require("configs.edit.neogen"),
}

edit["nosduco/remote-sshfs.nvim"] = {
	lazy = true,
	enabled = function()
		local os = vim.uv.os_uname().sysname
		return os == "Linux"
	end,
	cmd = {
		"RemoteSSHFSConnect",
		"RemoteSSHFSDisconnect",
		"RemoteSSHFSEdit",
		"RemoteSSHFSFindFiles",
		"RemoteSSHFSLiveGrep",
	},
	dependencies = { "nvim-telescope/telescope.nvim" },
	init = require("configs.edit.remote-sshfs"),
}

return edit
