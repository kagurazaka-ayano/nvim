local resource_manager = require("modules.utils.resource_manager")

return function()
	require("cord").setup({
		enabled = true,
		log_level = vim.log.levels.INFO,
		editor = {
			client = "neovim", -- vim, neovim, lunarvim, nvchad, astronvim or your application's client id
			tooltip = "Nyaaaaaaa~", -- Text to display when hovering over the editor's image
			icon = nil,
		},
		display = {
			theme = "pastel",
		},
		timestamp = {},
		idle = {
			show_status = true, -- Display idle status, disable to hide the rich presence on idle
			timeout = 300000, -- Timeout in milliseconds after which the idle status is set, 0 to display immediately
			state = "404 not found",
			smart_idle = true,
			tooltip = "💤", -- Text to display when hovering over the idle image
			icon = "https://github.com/SAWARATSUKI/KawaiiLogos/blob/main/ResponseCode/404%20NotFound.png?raw=true",
		},
		text = {
			workspace = function(opts)
				return "In " .. opts.workspace
			end,
			viewing = function(opts)
				return "Viewing " .. opts.filename
			end,
			editing = function(opts)
				return "Editing " .. opts.filename
			end,
			file_browser = function(opts)
				return "Browsing files in " .. opts.name
			end,
			plugin_manager = function(opts)
				return "Managing plugins in " .. opts.name
			end,
			lsp = function(opts)
				return "Configuring LSP in " .. opts.name
			end,
			docs = function(opts)
				return "Reading " .. opts.name
			end,
			vcs = function(opts)
				return "Committing changes in " .. opts.name
			end,
			notes = function(opts)
				return "Taking notes in " .. opts.name
			end,
			debug = function(opts)
				return "Debugging in " .. opts.name
			end,
			test = function(opts)
				return "Testing in " .. opts.name
			end,
			diagnostics = function(opts)
				return "Fixing problems in " .. opts.name
			end,
			games = function(opts)
				return "Playing " .. opts.name
			end,
			terminal = function(opts)
				return "Running commands in " .. opts.name
			end,
			dashboard = "Home",
		},
		buttons = nil,
		variables = nil,
		hooks = {
			ready = nil,
			shutdown = nil,
			pre_activity = nil,
			post_activity = nil,
			idle_enter = nil,
			idle_leave = nil,
			workspace_change = nil,
		},
		plugins = nil,
		advanced = {
			plugin = {
				autocmds = true,
				cursor_update = "on_hold",
				match_in_mappings = true,
			},
			server = {
				update = "fetch",
				pipe_path = nil,
				executable_path = nil,
				timeout = 300000,
			},
			discord = {
				reconnect = {
					enabled = false,
					interval = 5000,
					initial = true,
				},
			},
		},
	})
end
