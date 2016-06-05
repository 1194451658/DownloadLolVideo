
--------------------------------------------------------
--		Extend Lua Library
------------------------------------------------------

function string.split(str, sep)
	local result = {}
	if str then
		if not sep then sep = " " end
		local sepLen = string.len(sep)

		local curIndex = 1
		local findIndex = string.find(str, sep, curIndex, true)
		while findIndex do
			local subStr = string.sub(str, curIndex, findIndex-1)
			table.insert(result, subStr)
			curIndex = findIndex + sepLen
			findIndex = string.find(str, sep, curIndex, true)
		end
		if curIndex < string.len(str) then
			table.insert(result, string.sub(str, curIndex))
		end
	end

	if #result > 0 then return result end
	return nil
end
