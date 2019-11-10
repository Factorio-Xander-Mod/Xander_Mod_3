--Impose a recipe for XM to data.raw based on an ordering position and parameter table, in order: name, category, time, enabled at start, ingredients lsit, results list.  This function only covers a simple recipe definition.
--Impose means: change parameters if a prototype with the given name exists, otherwise create it new
function xm_simple_recipe_impose(group_no, subgroup_no, recipe_no, recipe_entry)
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	local recipe_str = "" .. recipe_no
	if recipe_no < 10 then recipe_str = "0" .. recipe_no end
	--
	if data.raw.recipe[recipe_entry[1]] then
		data.raw.recipe[recipe_entry[1]].category = recipe_entry[2]
		data.raw.recipe[recipe_entry[1]].energy_required = recipe_entry[3]
		data.raw.recipe[recipe_entry[1]].enabled = recipe_entry[4]
		data.raw.recipe[recipe_entry[1]].ingredients = recipe_entry[5]
		data.raw.recipe[recipe_entry[1]].results = recipe_entry[6]
		data.raw.recipe[recipe_entry[1]].order = group_str .. "-" .. subgroup_str .. "-" .. recipe_str
		data.raw.recipe[recipe_entry[1]].subgroup = xm_subgroups_to_impose[group_no][subgroup_no]
	else
		data:extend({
		{
			type = "recipe",
			name = recipe_entry[1],
			category = recipe_entry[2],
			energy_required = recipe_entry[3],
			enabled = recipe_entry[4],
			ingredients = recipe_entry[5],
			results = recipe_entry[6],
			order = group_str .. "-" .. subgroup_str .. "-" .. recipe_str,
			subgroup = xm_subgroups_to_impose[group_no][subgroup_no]
		}
		})
	end
end