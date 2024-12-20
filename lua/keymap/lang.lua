local bind = require("keymap.bind")
local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
-- local map_callback = bind.map_callback

local plug_map = {
	-- Plugin render-markdown.nvim
	["n|<F1>"] = map_cr("RenderMarkdown toggle")
		:with_noremap()
		:with_silent()
		:with_desc("tool: toggle markdown preview within nvim"),
	-- Plugin MarkdownPreview
	["n|<F12>"] = map_cr("PeekOpen"):with_noremap():with_silent():with_desc("tool: Preview markdown"),
}

bind.nvim_load_mapping(plug_map)
