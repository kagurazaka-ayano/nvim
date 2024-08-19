local mappings = {}
local bind = require("keymap.bind")
local map_cmd = bind.map_cmd
mappings["plug_map"] = {
	-- model.nvim begin
	["n|<C-m>d"] = map_cmd("<Cmd>Mdelete<cr>"):with_noremap():with_desc("delete content under curso"),
	["n|<C-m>s"] = map_cmd("<Cmd>Mselect<cr>"):with_noremap():with_desc("select response under cursor"),
	["n|<C-m>c"] = map_cmd("<Cmd>Mchat<cr>"):with_noremap():with_desc("run a chat buffer"),
	-- model.nvim end
}
return mappings
