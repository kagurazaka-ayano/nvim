local definitions = {
	-- Example
	bufs = {
		{ "BufReadPost", "/etc/nixos/*.conf", "setlocal filetype=nix" },
		{ "BufReadPost", "/etc/nix/*.conf", "setlocal filetype=nix" },
		{ "BufWritePre", "COMMIT_EDITMSG", "setlocal noundofile" },
	},
}

return definitions
