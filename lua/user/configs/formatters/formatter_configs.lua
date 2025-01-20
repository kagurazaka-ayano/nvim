local this_path = require("lfs").currentdir()
return require("modules.utils.path_util").extract_tables(this_path)
