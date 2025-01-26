local definitions = {
	-- Example
	bufs = {
		{ "BufReadPost", "/etc/nixos/nix.conf", "setlocal filetype=nix" },
		{ "BufReadPost", "/etc/nix/nix.conf", "setlocal filetype=nix" },
		{ "BufWritePre", "COMMIT_EDITMSG", "setlocal noundofile" },
	},
}

return definitions
