--Impose an item for XM to data.raw based on an ordering position and name.  This function covers simple items and science packs.
--Impose means: change parameters if a prototype with the given name exists, otherwise create it new
function xm_simple_item_impose(group_no, subgroup_no, item_no, item_name)
	--Generate properly formatted ordering string
	local group_name = xm_groups_to_impose[group_no]
	local subgroup_name = xm_subgroups_to_impose[group_no][subgroup_no]
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	local item_str = "" .. item_no
	if item_no < 10 then item_str = "0" .. item_no end
	--Select stack size based on the group the item is in
	local size_calc = 100
	if group_name == "material" then size_calc = 200
		elseif group_name == "intermediate-products" then size_calc = 100
		elseif group_name == "production" or group_name == "logistics" or group_name == "combat" then size_calc = 50
	end
	
	--Check for and impose science packs
	if subgroup_name == "science-pack" and data.raw.tool[item_name] then
		data.raw.tool[item_name].subgroup = xm_subgroups_to_impose[group_no][subgroup_no]
		data.raw.tool[item_name].order = group_str .. "-" .. subgroup_str .. "-" .. item_str
		data.raw.tool[item_name].stack_size = size_calc
	elseif not data.raw.tool[item_name] and subgroup_name == "science-pack" then
		local temp = table.deepcopy(data.raw.tool["automation-science-pack"])
		temp.name = item_name
		temp.subgroup = subgroup_name
		temp.order = group_str .. "-" .. subgroup_str .. "-" .. item_str
		temp.stack_size = size_calc
		temp.icon = "__xander-mod__/graphics/item/" .. group_name .. "/" .. subgroup_name .. "/" .. item_name .. ".png"
		data:extend({temp})
	end
	--Check for and impose regular items
	if data.raw.item[item_name] then
		data.raw.item[item_name].subgroup = xm_subgroups_to_impose[group_no][subgroup_no]
		data.raw.item[item_name].order = group_str .. "-" .. subgroup_str .. "-" .. item_str
		data.raw.item[item_name].stack_size = size_calc
	elseif data.raw["item-with-entity-data"][item_name] then
		data.raw["item-with-entity-data"][item_name].subgroup = xm_subgroups_to_impose[group_no][subgroup_no]
		data.raw["item-with-entity-data"][item_name].order = group_str .. "-" .. subgroup_str .. "-" .. item_str
		data.raw["item-with-entity-data"][item_name].stack_size = size_calc
	elseif data.raw["rail-planner"][item_name] then
		data.raw["rail-planner"][item_name].subgroup = xm_subgroups_to_impose[group_no][subgroup_no]
		data.raw["rail-planner"][item_name].order = group_str .. "-" .. subgroup_str .. "-" .. item_str
		data.raw["rail-planner"][item_name].stack_size = size_calc
	elseif subgroup_name ~= "science-pack" then
		data:extend({
		{
			type = "item",
			subgroup = subgroup_name,
			name = item_name,
			order = group_str .. "-" .. subgroup_str .. "-" .. item_str,
			stack_size = size_calc,
			icon = "__xander-mod__/graphics/item/" .. group_name .. "/" .. subgroup_name .. "/" .. item_name .. ".png",
			icon_size = 64,
			icon_mipmaps = 4
		}
		})
	end
end