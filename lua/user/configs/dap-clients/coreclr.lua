return function()
	local dap = require("dap")
	dap.adapters.godot = {
		type = "server",
		host = "127.0.0.1",
		port = 6006,
	}
	dap.configurations.cs = {
		{
			name = "[GODOT] Launch project",
			type = "godot",
			request = "launch",
			program = "/home/ayano/binaries/Godot_v4.2.1-stable_mono_linux_arm64/Godot_v4.2.1-stable_mono_linux.arm64",
			preLaunchTask = "build",
			args = { "--path", "${workspaceRoot}" },
			cwd = "${workspaceFolder}",
			stopAtEntry = false,
		},
		{
			name = "[GODOT] Launch Editor",
			type = "coreclr",
			request = "launch",
			program = "${config:godot-dotnet-tools.executablePath}",
			preLaunchTask = "build",
			args = {
				"--path",
				"${workspaceRoot}",
				"--editor",
			},
			cwd = "${workspaceFolder}",
			console = "internalConsole",
			stopAtEntry = false,
		},
		{
			name = "Attach to Process",
			type = "coreclr",
			request = "attach",
		},
	}
end
