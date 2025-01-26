local parent_dir = require("core.global").vim_path .. "/user/configs/formatters/"

local M = {}
for _, file in ipairs(vim.fn.readdir(parent_dir, [[v:val =~ '\.lua$']])) do
	if file ~= "init" then
		local f = require(file:gsub("%.lua$", ""))
		M[file] = f
	end
end

return M
