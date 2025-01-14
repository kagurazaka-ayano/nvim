local ts = require("telescope")
if jit.os == "Linux" then
	ts.load_extension("remote-sshfs")
end
