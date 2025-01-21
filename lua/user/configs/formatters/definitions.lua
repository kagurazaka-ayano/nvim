local M = {}
M.no_include = true

local path_utils = require("modules.utils.path_util")

local function script_path()
	local str = debug.getinfo(2, "S").source:sub(2)
	return str:match("(.*/)")
end

M.get_conf_path = function(conf)
	local conf_dir = script_path()
	conf_dir = vim.fn.fnamemodify(conf_dir, ":h")
	return conf_dir .. "/conf/" .. conf
end

return M
