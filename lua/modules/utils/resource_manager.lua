local M = {}
local global = require("core.global")

local spaceless_map = {
	Tailwindcss = "tailwind css",
	GoLang = "Golang",
}

local fetch_files = function(root, name)
	local lfs = require("lfs")
	local fs = {}
	for i in lfs.dir(root) do
		local attr = lfs.attributes(root .. i)
		if attr.mode ~= "directory" and string.find(i, name) ~= nil then
			table.insert(fs, root .. i)
		end
	end
	vim.notify(vim.inspect(fs))
	return fs
end

M.assets_path = global.vim_path .. "/lua/user/assets/"

M.kawaii_logo = function(name)
	name = spaceless_map[name] == nil and name or spaceless_map[name]
	local root = M.assets_path .. "KawaiiLogos/" .. name
	return fetch_files(root, name)[1]
end

M.kawaii_status = function(name)
	local root = M.assets_path .. "KawaiiLogos/ResponseCode/"
	return fetch_files(root, name)
end

M.kawaii_programmer = function()
	return M.assets_path .. "KawaiiLogos/" .. "IamSeries/IamProgrammerEnglish!.png"
end

return M
