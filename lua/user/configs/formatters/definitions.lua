local M = {}

local utils = require("modules.utils.lua_utils")
local path_utils = require("modules.utils.path_util")

M.conf_dir = "~/.config/nvim/lua/user/configs/formatters/conf/"

M.get_conf_path = function(conf)
	return path_utils.find_file(M.conf_dir, function(path)
		return path_utils.file_name_no_ext(path) == conf
	end)
end

return M
