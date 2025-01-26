
return function()
	require("cord").setup({
		usercmds = true, -- Enable user commands
		log_level = "error", -- One of 'trace', 'debug', 'info', 'warn', 'error', 'off'
		timer = {
			interval = 1500, -- Interval between presence updates in milliseconds (min 500)
			reset_on_idle = false, -- Reset start timestamp on idle
			reset_on_change = false, -- Reset start timestamp on presence change
		},
		editor = {
			image = nil, -- Image ID or URL in case a custom client id is provided
			client = "neovim", -- vim, neovim, lunarvim, nvchad, astronvim or your application's client id
			tooltip = "nekovim", -- Text to display when hovering over the editor's image
		},
		display = {
			theme = "pastel",
		},
		timestamp = {},
		idle = {
			enable = true, -- Enable idle status
			show_status = true, -- Display idle status, disable to hide the rich presence on idle
			timeout = 300000, -- Timeout in milliseconds after which the idle status is set, 0 to display immediately
			state = "eepy~",
			text = "Idle", -- Text to display when idle
			tooltip = "💤", -- Text to display when hovering over the idle image
			icon = resource_manager.kawaii_status("404"),
		},
		text = {
			viewing = "Viewing {}", -- Text to display when viewing a readonly file
			editing = "Editing {}", -- Text to display when editing a file
			file_browser = "Browsing files in {}", -- Text to display when browsing files (Empty string to disable)
			plugin_manager = "Managing plugins in {}", -- Text to display when managing plugins (Empty string to disable)
			lsp_manager = "Configuring LSP in {}", -- Text to display when managing LSP servers (Empty string to disable)
			vcs = "Committing changes in {}", -- Text to display when using Git or Git-related plugin (Empty string to disable)
			workspace = "In {}", -- Text to display when in a workspace (Empty string to disable)
		},

		-- assets = {
		--   lazy = {                                 -- Vim filetype or file name or file extension = table or string
		--     name = 'Lazy',                         -- Optional override for the icon name, redundant for language types
		--     icon = 'https://example.com/lazy.png', -- Rich Presence asset name or URL
		--     tooltip = 'lazy.nvim',                 -- Text to display when hovering over the icon
		--     type = 'plugin_manager',               -- One of 'language', 'file_browser', 'plugin_manager', 'lsp_manager', 'vcs' or respective ordinals; defaults to 'language'
		--   },
		--   ['Cargo.toml'] = 'crates',
		-- },
	})
end
