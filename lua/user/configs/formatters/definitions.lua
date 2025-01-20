local M = {}

utils = require("modules.utils.lua_utils")

M.conf_dir = "~/.config/nvim/lua/user/configs/formatters/conf/"
M.confs = utils.scandir(M.conf_dir)

M.get_conf_path = function(conf)
	for _, v in ipairs(M.confs) do
		if v.starts(conf) then
			return M.conf_dir .. v
		end
	end
end

return M
