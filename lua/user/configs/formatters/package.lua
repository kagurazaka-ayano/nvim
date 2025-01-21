local script_path = debug.getinfo(1).source:match("@(.*)")
local parent_dir = vim.fn.fnamemodify(script_path, ":h")
local path_utils = require("modules.utils.path_util")
local M = {}

for _, file in
	pairs(path_utils.get_files(parent_dir, function(f)
		return f:match("%.lua$")
	end))
do
	file = path_utils.file_name(file)
	file = file:match("(.+)%.lua$")
	if file ~= "package" and file ~= "definitions" then
		local t = require("configs.formatters." .. file)
		if t.no_inlcude == true then
			goto continue
		else
			M[file] = t
		end
	end
	::continue::
end

return M
