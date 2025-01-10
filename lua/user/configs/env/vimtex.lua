return function()
	vim.g.vimtex_view_method = "general"
	if vim.loop.os_uname().sysname == "Darwin" then
		vim.g.vimtex_view_method = "skim"
	end
end
