local M = {}

function M.filter_inplace(t, func)
	local i = 1
	while i <= #t do
		if func(t[i]) then
			-- value passes test
			i = i + 1
		else
			table.remove(t, i)
		end
	end
end

function M.list_to_str(li, delim, extraction)
	local str = ""
	for i = 1, #li do
		str = str .. extraction(li[i])
		if i < #li then
			str = extraction(li[i]) .. delim
		end
	end
	return str
end

function M.extract_property(list, extract_callback)
	local li = {}
	for i = 1, #list do
		table.insert(li, i, extract_callback(list[i]))
	end
	return li
end

return M
