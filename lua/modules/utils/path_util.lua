local M = {}
local lfs = require("lfs")

function M.file_name(path)
	return path:match("([^/]+%.%w+)$")
end

function M.file_name_no_ext(path)
	return path:match("([^/]+)%.%w+$")
end

function M.is_dir(path)
	local stat, it = pcall(lfs.dir, path)
	return stat
end

function M.get_files(path, predicate)
	local files = {}
	for file in lfs.dir(path) do
		if file ~= "." and file ~= ".." then
			local f = path .. "/" .. file
			local attr = lfs.attributes(f)
			if attr.mode == "file" then
				if predicate(f) then
					table.insert(files, f)
				end
			end
		end
	end
	return files
end

return M
