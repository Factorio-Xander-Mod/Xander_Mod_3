--Recursive function to iterate through a multi-layered table structure and replace all instances of strings given in froms with corresponding strings in tos
function find_replace_graphics(table, froms, tos)
	for key, entry in pairs(table) do
		if type(entry) == "table" then
			find_replace_graphics(entry, froms, tos)
		elseif type(entry) == "string" then
			for j, str in ipairs(froms) do
				if entry == str then
					table[key] = tos[j]
				end
			end
		end
	end
end

--Recursive function to iterate through a multi-layered table structure and set all parameters keyed as string "param_name" to the new value in "new_value"
function find_replace_param(table, param_name, new_value)
	for key, entry in pairs(table) do
		if key == param_name then
			table[key] = new_value
		elseif type(entry) == "table" then
			find_replace_param(entry, param_name, new_value)
		end
	end
end