local M = {}

function M.input_args()
	local argument_string = vim.fn.input("Program arg(s) (enter nothing to leave it null): ")
	return vim.fn.split(argument_string, " ", true)
end

function M.input_exec_path()
	return vim.fn.input('Path to executable (default to "a.out"): ', vim.fn.expand("%:p:h") .. "/a.out", "file")
end

function M.input_file_path()
	return vim.fn.input("Path to debuggee (default to the current file): ", vim.fn.expand("%:p"), "file")
end

function M.input_stdin_path()
	return vim.fn.input("path to stdin (in a file): ", vim.fn.expand("%:p"), "file")
end

function M.input_stdout_path()
	return vim.fn.input("path to stdout (in a file): ", vim.fn.expand("%:p"), "file")
end

function M.get_env()
	local variables = {}
	for k, v in pairs(vim.fn.environ()) do
		table.insert(variables, string.format("%s=%s", k, v))
	end
	return variables
end

return setmetatable({}, {
	__index = function(_, key)
		return function()
			return function()
				return M[key]()
			end
		end
	end,
})
