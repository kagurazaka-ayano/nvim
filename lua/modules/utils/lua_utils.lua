local M = {}
local is_windows = require("core.global").is_windows
local is_linux = require("core.global").is_linux
local lfs = require("lfs")

function M.filter_inplace(t, func)
	local i = 1
	while i <= #t do
		if func(t[i]) then
			-- value passes test
			i = i + 1
		else
			table.remove(t, i)
		end
	end
end

function M.list_to_str(li, delim, extraction)
	local str = ""
	for i = 1, #li do
		str = str .. extraction(li[i])
		if i < #li then
			str = extraction(li[i]) .. delim
		end
	end
	return str
end

function M.extract_property(list, extract_callback)
	local li = {}
	for i = 1, #list do
		table.insert(li, i, extract_callback(list[i]))
	end
	return li
end

function M.table_length(T)
	local count = 0
	for _ in pairs(T) do
		count = count + 1
	end
	return count
end

function M.file_name(path)
	return path:match("^.+/(.+)$")
end

function M.file_name_no_ext(path)
	return path:match("^.+/(.+)%..+$")
end

function M.scandir(directory)
	local i, t, popen = 0, {}, io.popen
	local pfile = popen('ls -a "' .. directory .. '"')
	if not pfile then
		return {}
	end
	for filename in pfile:lines() do
		i = i + 1
		t[i] = filename
	end
	pfile:close()
	return t
end

return M
