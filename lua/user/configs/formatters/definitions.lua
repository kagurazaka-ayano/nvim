local M = {}
M.no_include = true

local script_path = debug.getinfo(2, "S").source:sub(2):match("(.*/)")

M.get_conf_path = function(conf)
	local conf_dir = script_path
	conf_dir = vim.fn.fnamemodify(conf_dir, ":h")
	return conf_dir .. "/conf/" .. conf
end

return M
