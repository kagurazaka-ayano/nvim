-- Please check `lua/core/settings.lua` to view the full list of configurable settings
local settings = {}

-- Examples
settings["use_ssh"] = true

settings["colorscheme"] = "catppuccin"

settings["dap_deps"] = {
	"coreclr",
}

settings["disabled_plugins"] = {
	"zbirenbaum/neodim",
}

return settings
