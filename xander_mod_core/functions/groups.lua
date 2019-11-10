--Impose an item-group for XM to data.raw based on an ordering position and name.
--Impose means: change parameters if a prototype with the given name exists, otherwise create it new
function xm_item_group_impose(group_no, group_name)
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	if data.raw["item-group"][group_name] then
		data.raw["item-group"][group_name].order = group_str
	else
		data:extend({
		{
			type = "item-group",
			name = group_name,
			order = group_str,
			inventory_order = group_str,
			icon = "__xander-mod__/graphics/category/" .. group_name .. ".png",
			icon_size = 64
		}
		})
	end
end

--Impose an item-subgroup for XM to data.raw based on an ordering position and name.  Impose means: change parameters if an entry with the given name exists, otherwise create it new
function xm_item_subgroup_impose(group_no, group_name, subgroup_no, subgroup_name)
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	--
	if data.raw["item-subgroup"][subgroup_name] then
		data.raw["item-subgroup"][subgroup_name].order = group_str .. "-" .. subgroup_str
		data.raw["item-subgroup"][subgroup_name].group = group_name
	else
		data:extend({
		{
			type = "item-subgroup",
			name = subgroup_name,
			group = group_name,
			order = group_str .. "-" .. subgroup_str
		}
		})
	end
end