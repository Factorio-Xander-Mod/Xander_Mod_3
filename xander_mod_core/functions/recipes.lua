--require table

--Impose a recipe for XM to data.raw based on an ordering position and parameter table, in order: name, category, time, enabled at start, ingredients lsit, results list.  This function only covers a simple recipe definition.
--Impose means: change parameters if a prototype with the given name exists, otherwise create it new
function xm_simple_recipe_impose(group_no, subgroup_no, recipe_no, recipe_entry)
	--Construct order strings
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	local recipe_str = "" .. recipe_no
	if recipe_no < 10 then recipe_str = "0" .. recipe_no end
	
	--Impose recipe if found, otherwise create new
	if data.raw.recipe[recipe_entry[1]] then
		data.raw.recipe[recipe_entry[1]].category = recipe_entry[2]
		data.raw.recipe[recipe_entry[1]].energy_required = recipe_entry[3]
		data.raw.recipe[recipe_entry[1]].enabled = recipe_entry[4]
		data.raw.recipe[recipe_entry[1]].ingredients = recipe_entry[5]
		data.raw.recipe[recipe_entry[1]].results = recipe_entry[6]
		data.raw.recipe[recipe_entry[1]].always_show_made_in = true
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
			always_show_made_in = true,
			order = group_str .. "-" .. subgroup_str .. "-" .. recipe_str,
			subgroup = xm_subgroups_to_impose[group_no][subgroup_no]
		}
		})
	end
end

--
function xm_add_waste_recipe(group_no, subgroup_no, substance_no, substance_group_name, substance_subgroup_name, substance_name, recipe_no)

	--Construct order strings
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	local substance_str = "" .. substance_no
	if substance_no < 10 then substance_str = "0" .. substance_no end
	local recipe_group_str = "" .. table.maxn(xm_subgroups_to_impose[group_no])
	if table.maxn(xm_subgroups_to_impose[group_no]) < 10 then recipe_group_str = "0" .. table.maxn(xm_subgroups_to_impose[group_no]) end
	local recipe_str = "" .. recipe_no
	if recipe_no < 10 then recipe_str = "0" .. recipe_no end
	
	--Compute parameters that change between solid and fluid waste
	local ingredient_entry = {substance_name, 1}
	local icon_path = ""
	local recipe_name = {"recipe-name.dump-recipe", {"item-name." .. substance_name}}
	if substance_group_name == "material" then
		icon_path = data.raw.item[substance_name].icon
	elseif substance_group_name == "fluids" then
		ingredient_entry = {type = "fluid", name = substance_name, amount = 10}
		icon_path = data.raw.fluid[substance_name].icon
		recipe_name = {"recipe-name.dump-recipe", {"fluid-name." .. substance_name}}
	end
	
	--Add recipe to data.raw
	data:extend({
	{
		type = "recipe",
		name = "dump-" .. substance_name,
		category = "waste",
		energy_required = 0.1,
		enabled = true,
		ingredients = {ingredient_entry},
		results = {},
		hidden_from_player_crafting = true,
		order = group_str .. "-" .. recipe_group_str .. "-" .. recipe_str,
		subgroup = xm_subgroups_to_impose[group_no][table.maxn(xm_subgroups_to_impose[group_no])],
		icon = icon_path,
		icon_size = 64,
		icon_mipmaps = 4,
		hide_from_stats = true,
		hide_from_player_crafting = true,
		localised_name = recipe_name
	}
	})
end