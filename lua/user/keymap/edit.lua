local mappings = {}
local bind = require("keymap.bind")
local map_cmd = bind.map_cmd

mappings["plug_map"] = {
	["n|gcf"] = map_cmd(":lua require('neogen').generate()<CR>"):with_noremap():with_desc("generate comment"),
}
return mappings