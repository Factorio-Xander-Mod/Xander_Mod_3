--Impose a technology for XM to data.raw based on an ordering position and parameter table: name, unit count, unit packs, unit time, recipe unlocks.  This function only covers a simple technology definition.
--Impose means: change parameters if a prototype with the given name exists, otherwise create it new

function xm_simple_technology_impose(group_no, subgroup_no, technology_no, tech_entry)
	local group_name = xm_groups_to_impose[group_no]
	local subgroup_name = xm_subgroups_to_impose[group_no][subgroup_no]
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	local technology_str = "" .. technology_no
	if technology_no < 10 then technology_str = "0" .. technology_no end
	
	if data.raw.technology[tech_entry[1]] then
		data.raw.technology[tech_entry[1]].order = group_str .. "-" .. subgroup_str .. "-" .. technology_str
		data.raw.technology[tech_entry[1]].unit = {count = tech_entry[2], ingredients = {}, time = tech_entry[4]}
		data.raw.technology[tech_entry[1]].prerequisites = tech_entry[6]
		if tech_entry[5][1] then
			data.raw.technology[tech_entry[1]].effects = {}
			for _, unlock_recipe in ipairs(tech_entry[5]) do
				table.insert(data.raw.technology[tech_entry[1]].effects, {type = "unlock-recipe", recipe = unlock_recipe})
			end
		end
	else
		data:extend({
		{
			type = "technology",
			name = tech_entry[1],
			order = group_str .. "-" .. subgroup_str .. "-" .. technology_str,
			icon_size = 128,
			icon = "__xander-mod__/graphics/technology/" .. group_name .. "/" .. subgroup_name .. "/" .. tech_entry[1] .. ".png",
			unit = {count = tech_entry[2], ingredients = {}, time = tech_entry[4]},
			effects = {},
			prerequisites = tech_entry[6]
		}
		})
		for _, unlock_recipe in ipairs(tech_entry[5]) do
			table.insert(data.raw.technology[tech_entry[1]].effects, {type = "unlock-recipe", recipe = unlock_recipe})
		end
	end
	
	for _, pack in ipairs(tech_entry[3]) do
		table.insert(data.raw.technology[tech_entry[1]].unit.ingredients, {pack, 1})
	end
end