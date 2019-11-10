--Function to add a new XM entity to data.raw based on an ordering position and table of parameters
function xm_entity_add(group_no, subgroup_no, entity_no, params)
	--Arrange ordering strings, copy parent information
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	local entity_str = "" .. entity_no
	if entity_no < 10 then entity_str = "0" .. entity_no end
	local temp = table.deepcopy(data.raw[params.parent_type][params.parent_name])
	
	--Modify parameters of the entity prototype stored in "temp"
	temp.type = params.type
	temp.name = params.name
	
	temp.order = group_str .. "-" .. subgroup_str .. "-" .. entity_str
	temp.icon = data.raw.item[params.name].icon
	temp.minable.result = params.name
	temp.open_sound = temp.open_sound or {filename = "__base__/sound/machine-open.ogg", volume = 0.85}
	temp.close_sound = temp.close_sound or {filename = "__base__/sound/machine-close.ogg", volume = 0.75}
	temp.source_inventory_size = nil
	temp.result_inventory_size = nil
	
	for key, value in pairs(params) do
		if not (key == "type" or key == "name" or key == "parent_type" or key == "parent_name") then
			find_replace_param(temp, key, value)
		end
	end
	
	--Modify graphics
	if params.graphics_from and params.graphics_to then
		find_replace_graphics(temp, params.graphics_from, params.graphics_to)
	end
	
	--Add "temp" to main data list
	data:extend({temp})
	data.raw.item[params.name].place_result = params.name
end

function xm_entity_change(group_no, subgroup_no, entity_no, params)
	--Arrange ordering strings
	local group_str = "" .. group_no
	if group_no < 10 then group_str = "0" .. group_no end
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	local entity_str = "" .. entity_no
	if entity_no < 10 then entity_str = "0" .. entity_no end
	
	--Instate changes
	data.raw[params.type][params.name].order = group_str .. "-" .. subgroup_str .. "-" .. entity_str
end