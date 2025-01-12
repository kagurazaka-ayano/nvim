return function()
	local os = require("core.global")
	if os.is_mac then
		vim.g.vimtex_view_method = "skim"
	else
		vim.g.vimtex_view_method = "general"
	end
	vim.g.vimtex_compiler_latexmk = {
		aux_dir = "",
		out_dir = "",
		callback = 1,
		continuous = 1,
		executable = "latexmk",
		hooks = {},
		options = {
			"-shell-escape",
			"-verbose",
			"-file-line-error",
			"-synctex=1",
			"-interaction=nonstopmode",
		},
	}
end
