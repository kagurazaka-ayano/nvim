local ls = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load({})
ls.filetype_extend("CMakeLists.txt", { "cmake" })
