local M = {}
local global = require("core.global")


local spaceless_map = {
	Tailwindcss = "tailwind css",
	GoLang = "Golang",
}

local fetch_files = function(root, name)
	local fs = path_util.get_files(root, function(p)
		return string.find(p, name) ~= nil
	end)
	return fs
end

M.assets_path = global.vim_path .. "/lua/user/assets/"

M.kawaii_logo = function(name)
	name = spaceless_map[name] == nil and name or spaceless_map[name]
	local root = M.assets_path .. "KawaiiLogos/" .. name
	return fetch_files(root, name)[1]
end

M.kawaii_status = function(name)
	local root = M.assets_path .. "KawaiiLogos/" .. "ResponseCode/"
	return fetch_files(root, name)
end

M.kawaii_programmer = function()
	return M.assets_path .. "KawaiiLogos/" .. "IamSeries/IamProgrammerEnglish!.png"
end

return M
