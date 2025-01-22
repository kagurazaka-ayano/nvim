local path_util = require("modules.utils.path_util")

local script_path = debug.getinfo(2, "S").source:sub(2):match("(.*/)")
