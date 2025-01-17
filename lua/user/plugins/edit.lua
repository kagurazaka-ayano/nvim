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
		return require("global").is_linux
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
