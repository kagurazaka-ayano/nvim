local path_util = require("modules.utils.path_util")

local script_path = debug.getinfo(2, "S").source:sub(2):match("(.*/)")

local M = {}

M.kawaii_logo = function(name)
	local root = script_path .. "/KawaiiLogos/" .. name .. "/"
	local fs = path_util.get_files(root, function(p)
		return string.find(p, name) ~= nil
	end)
	return fs[1]
end

return M
