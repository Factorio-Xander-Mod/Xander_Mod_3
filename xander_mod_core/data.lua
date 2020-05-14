--Notes on structure of this main data file for XM:
--It is divided at the first (highest) level according to feature type: item, recipe, tile, entity, etc.
--It is divided at the second level according to code operation: importing lists, working on data.raw, applying small manual changes that don't fit well into the highly-automated mod structure

--============  UTILITY  ============
require("xm-util")
require("misc")

------------





--============  GROUPS  ============

--Lists and functions
require("lists.groups")
require("functions.groups")

--Modify data.raw
for i, group_name in pairs(xm_groups_to_impose) do
	xm_item_group_impose(i, group_name)
	for j, subgroup_name in ipairs(xm_subgroups_to_impose[i]) do
		xm_item_subgroup_impose(i, group_name, j, subgroup_name)
	end
end

--Manual changes
--nil
------------




--============  ITEMS  ============

--Lists and functions
require("lists.items")
require("functions.items")

--Modify data.raw
for i, group_name in pairs(xm_groups_to_impose) do
	
	if xm_all_items_to_impose[group_name] then
	for j, subgroup_name in ipairs(xm_subgroups_to_impose[i]) do
		
		if xm_all_items_to_impose[group_name][subgroup_name] then
		for k, item_name in ipairs(xm_all_items_to_impose[group_name][subgroup_name]) do
			xm_simple_item_impose(i, j, k, item_name)
		end
		end
		
	end
	end
	
end

--error(string_run)

--Manual changes
require("manual.items")
------------




--============  FLUIDS  ============
--Lists and functions
require("lists.fluids")
require("functions.fluids")

--Modify data.raw
--All fluids are in the group "fluids", which is index 4 in xm_subgroups_to_impose - no need to iterate through all groups and check if each one has fluids
for i, subgroup_name in ipairs(xm_subgroups_to_impose[4]) do
	
	if xm_all_fluids_to_impose[subgroup_name] then
	for j, fluid_entry in ipairs(xm_all_fluids_to_impose[subgroup_name]) do
		xm_simple_fluid_impose(i, j, table.unpack(fluid_entry))
	end
	end
	
end

--Manual changes
require("manual.fluids")
------------




--============  TILES  ============

--Lists and functions
require("lists.tiles")

--Modify data.raw
for i, tile_name in ipairs(xm_tiles_to_add) do
	--Copy the parent as a template for the current tile, and set modified parameters
	local temp = table.deepcopy(data.raw.tile[xm_tile_parents[i]])
	temp.name = tile_name
	temp.autoplace = nil
	temp.layer = xm_tile_layers[i]
	temp.map_color = xm_tile_map_colors[i]
	temp.decorative_removal_probability = xm_tile_decor_probabilities[i]
	temp.ageing = 0	
	if temp.minable then temp.minable.result = tile_name end
	
	--Modify graphics
	find_replace_graphics(temp, xm_tile_froms[i], xm_tile_tos[i])

	data:extend({temp})
	--Add the place_as_tile for corresponding items
	data.raw.item[tile_name].place_as_tile = {result = tile_name, condition_size = 1, condition = {"water-tile"}}
end

--Manual changes
require("manual.tiles")
------------




--============  RESOURCES  ============

--Lists and functions
require("lists.resources")
require("functions.resources")

--Modify data.raw
for i, resource_name in ipairs(xm_resource_names) do
	xm_resource_autoplace_impose(resource_name, i)
	if ((not data.raw.resource[resource_name]) and (string.find(xm_resource_categories[i], "solid"))) then
		xm_resource_particle_add(resource_name, i)
	end
	if not data.raw.resource[resource_name] then
		xm_noise_layer_add(resource_name)
		xm_resource_add(resource_name, i)
	else
		xm_resource_override(resource_name, i)
	end
end

--Manual changes
require("manual.resources")
------------




--============  ENTITIES  ============

--Lists and functions
require("lists.entities")
require("functions.entities")

--Modify data.raw
for i, group_name in pairs(xm_groups_to_impose) do
	
	if xm_all_entities_to_impose[group_name] then
	for j, subgroup_name in ipairs(xm_subgroups_to_impose[i]) do
		
		if xm_all_entities_to_impose[group_name][subgroup_name] then
		for k, entity_entry in ipairs(xm_all_entities_to_impose[group_name][subgroup_name]) do
			
			if data.raw[entity_entry.type][entity_entry.name] then
			xm_entity_change(i, j, k, entity_entry)
			elseif entity_entry.type then
			xm_entity_add(i, j, k, entity_entry)
			end
			
		end
		end
		
	end
	end
	
end

--Manual changes
require("manual.entities")
------------




--============  RECIPES  ============

--Lists and functions
require("lists.recipes")
require("functions.recipes")

--Add main collection of recipes to data.raw
for i, group_name in pairs(xm_groups_to_impose) do
	
	if xm_all_recipes_to_impose[group_name] then
	for j, subgroup_name in ipairs(xm_subgroups_to_impose[i]) do
		
		if xm_all_recipes_to_impose[group_name][subgroup_name] then
		for k, recipe_entry in ipairs(xm_all_recipes_to_impose[group_name][subgroup_name]) do
			xm_simple_recipe_impose(i, j, k, recipe_entry)
		end
		end
		
	end
	end
	
end

--Add waste dump recipes
local total_waste_counter = 1

for i, group_name in pairs(xm_groups_to_impose) do
	
	if group_name == "material" then
	for j, subgroup_name in ipairs(xm_subgroups_to_impose[i]) do
		
		if xm_all_items_to_impose[group_name][subgroup_name] then
		for k, item_name in ipairs(xm_all_items_to_impose[group_name][subgroup_name]) do
			xm_add_waste_recipe(i, j, k, group_name, subgroup_name, item_name, total_waste_counter)
			total_waste_counter = total_waste_counter + 1
		end
		end
		
	end
	end
	
	total_waste_counter = 1
	if group_name == "fluids" then
	for j, subgroup_name in ipairs(xm_subgroups_to_impose[i]) do
		
		if xm_all_fluids_to_impose[subgroup_name] then
		for k, fluid_entry in ipairs(xm_all_fluids_to_impose[subgroup_name]) do
			xm_add_waste_recipe(i, j, k, group_name, subgroup_name, fluid_entry[1], total_waste_counter)
			total_waste_counter = total_waste_counter + 1
		end
		end
		
	end
	end
	
end

--Manual changes
require("manual.recipes")
------------




--============  TECHNOLOGIES  ============

--Lists and functions
require("lists.technologies")
require("functions.technologies")

--Modify data.raw
for i, group_name in pairs(xm_groups_to_impose) do
	
	if xm_all_technologies_to_impose[group_name] then
	for j, subgroup_name in ipairs(xm_subgroups_to_impose[i]) do
		
		if xm_all_technologies_to_impose[group_name][subgroup_name] then
		for k, tech_entry in ipairs(xm_all_technologies_to_impose[group_name][subgroup_name]) do
			xm_simple_technology_impose(i, j, k, tech_entry)
		end
		end
		
	end
	end
	
end

--Manual changes
require("manual.technologies")
------------