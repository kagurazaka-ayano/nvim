local M = {}

local settings = require("core.settings")
local lua_utils = require("modules.utils.lua_utils")
local disabled_workspaces = settings.format_disabled_dirs
local ignored_filetypes = settings.ignored_filetypes
local format_on_save = settings.format_on_save
local format_notify = settings.format_notify
local format_modifications_only = settings.format_modifications_only
local server_formatting_block_list = settings.server_formatting_block_list
local format_timeout = settings.format_timeout
local disabled_formatters = settings.disabled_formatters
local block_list = settings.formatter_block_list
vim.api.nvim_create_user_command("FormatToggle", function()
	M.toggle_format_on_save()
end, {})
vim.api.nvim_create_user_command("FormatterToggleFt", function(opts)
	if block_list[opts.args] == nil then
		vim.notify(
			string.format("[LSP] Formatter for [%s] has been recorded in list and disabled.", opts.args),
			vim.log.levels.WARN,
			{ title = "LSP Formatter Warning" }
		)
		block_list[opts.args] = true
	else
		block_list[opts.args] = not block_list[opts.args]
		vim.notify(
			string.format(
				"[LSP] Formatter for [%s] has been %s.",
				opts.args,
				not block_list[opts.args] and "enabled" or "disabled"
			),
			not block_list[opts.args] and vim.log.levels.INFO or vim.log.levels.WARN,
			{ title = string.format("LSP Formatter %s", not block_list[opts.args] and "Info" or "Warning") }
		)
	end
end, { nargs = 1, complete = "filetype" })
vim.api.nvim_create_user_command("Format", function() end, {})

function M.toggle_format_on_save()
	vim.g.disable_autoforamt = not vim.g.disable_autoforamt
	vim.b.disable_autoformat = not vim.b.disable_autoformat
	if not vim.g.disable_autoforamt then
		vim.notify("[LSP] Format on save enabled.", vim.log.levels.INFO, { title = "LSP Formatter Info" })
	else
		vim.notify("[LSP] Format on save disabled.", vim.log.levels.WARN, { title = "LSP Formatter Warning" })
	end
end

function M.get_available_formatters(bufnr)
	local co = require("conform")
	local formatters = co.list_formatters(bufnr)
	lua_utils.filter_inplace(formatters, function(formatter)
		return not vim.tbl_contains(disabled_formatters, formatter.name)
	end)
	formatters = lua_utils.extract_property(formatters, function(formatter)
		return formatter.name
	end)
	return formatters
end

function M.get_attached_lsp(bufno)
	local lsp = vim.lsp.get_clients()
	local li = {}
	for i = 1, #lsp do
		if lsp[i].attached_buffers[bufno] and vim.tbl_contains(server_formatting_block_list, lsp[i].name) then
			table.insert(li, i, lsp[i].name)
		end
	end
	return li
end

function M.get_formattable_lsp(bufno)
	local lsp = M.get_attached_lsp(bufno)
	local li = {}
	for i = 1, #lsp do
		if lsp[i].supports_method("textDocument/formatting") then
			table.insert(li, i, lsp[i].name)
		end
	end
	return li
end

function M.check_can_format(bufnr)
	local filedir = vim.fn.expand("%:p:h")
	for i = 1, #disabled_workspaces do
		if vim.regex(vim.fs.normalize(disabled_workspaces[i])):match_str(filedir) ~= nil then
			vim.notify(
				string.format(
					"[LSP] Formatting for all files under [%s] has been disabled.",
					vim.fs.normalize(disabled_workspaces[i])
				),
				vim.log.levels.WARN,
				{ title = "LSP Formatter Warning" }
			)
			return false
		end
	end
	if vim.tbl_contains(ignored_filetypes, vim.bo[bufnr].filetype) or block_list[vim.bo[bufnr].filetype] then
		vim.notify(
			string.format("[LSP] Formatting for %s file has been disabled.", vim.fs.normalize(vim.bo[bufnr].filetype)),
			vim.log.levels.WARN,
			{ title = "LSP Formatter Warning" }
		)
		return false
	end
	return true
end

function M.filter_formatter(bufnr)
	if not M.check_can_format(bufnr) then
		return
	end
	local formatters = M.get_available_formatters(bufnr)
	if #formatters == 0 then
		vim.notify(
			"[LSP] No matching formatter, will try to use lsp to format.",
			vim.log.levels.WARN,
			{ title = "LSP Formatter Warning" }
		)
		return
	end
	return formatters
end

function M.format_on_save_callback(bufnr)
	if vim.g.disable_autoforamt or vim.b[bufnr].disable_autoformat then
		return
	end
	local formatters = M.filter_formatter(bufnr)
	local ans = { timeout_ms = format_timeout, lsp_format = "fallback", formatters = formatters }
	ans.callback = M.format_done_callback
	return ans
end

function M.format_done_callback(err, did_edit)
	if err == nil then
		if format_notify and did_edit then
			vim.notify("[LSP] Format successfully!", vim.log.levels.INFO, { title = "LSP Format Success" })
		end
	else
		vim.notify(
			string.format("[LSP] Format failed! \n Error: %s", err),
			vim.log.levels.ERROR,
			{ title = "LSP Format Failed" }
		)
	end
end

return M
