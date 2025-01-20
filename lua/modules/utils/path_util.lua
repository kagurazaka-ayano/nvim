local M = {}
local lfs = require("lfs")

local function file_exists(file)
	local f = io.open(file, "r")
	if f then
		io.close(f)
		return true
	else
		return false
	end
end

function M.file_name(path)
	return path:match("^.+/(.+)$")
end

function M.file_name_no_ext(path)
	return path:match("^.+/(.+)%..+$")
end

function M.is_dir(path)
	local stat, it, f_obj = pcall(lfs.dir, path)
	return stat
end

function M.find_file(base, pred)
	local stat, it, f_obj = pcall(lfs.dir, base)
	for iter, dir_obj in lfs.dir(base) do
		local path = iter(dir_obj)
		if M.is_dir(path) then
			M.find_file(path, pred)
		else
			if pred(path) then
				return path
			else
				return nil
			end
		end
	end
end

M.extract_tables = function(base)
	local ans = {}
	for _, iter, dir_obj in pcall(lfs.dir, base) do
		local f = iter(dir_obj)
		if not M.is_dir(f) then
			local stat, tb = pcall(require, f)
			if not stat or type(tb) ~= "table" then
				tb = {}
			end
			ans[M.file_name_no_ext(f)] = tb
		end
	end
	return ans
end

return M
