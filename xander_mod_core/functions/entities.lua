--Adds a new XM entity to data.raw based on an given ordering position and table of parameters
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

--Changes the ordering string of a pre-existing entity to the XM format
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
	
	local counter = 0
	for key, value in pairs(params) do
		counter = counter + 1
		if counter > 2 then
			find_replace_param(data.raw[params.type][params.name], key, value)
		end
	end
end


--Pipe pictures that fit with the assembling machine 1
assembler_1_pipepictures = 
{
	north =
	{
		filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-1-pipe-N.png",
		priority = "extra-high",
		width = 35,
		height = 18,
		shift = util.by_pixel(2.5, 14),
		hr_version =
		{
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-1-pipe-N-hr.png",
			priority = "extra-high",
			width = 71,
			height = 38,
			shift = util.by_pixel(2.25, 13.5),
			scale = 0.5
		}
	},
	east =
	{
		filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-1-pipe-E.png",
		priority = "extra-high",
		width = 20,
		height = 38,
		shift = util.by_pixel(-25, 1),
		hr_version =
		{
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-1-pipe-E-hr.png",
			priority = "extra-high",
			width = 42,
			height = 76,
			shift = util.by_pixel(-24.5, 1),
			scale = 0.5
		}
	},
	south =
	{
		filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-1-pipe-S.png",
		priority = "extra-high",
		width = 44,
		height = 31,
		shift = util.by_pixel(0, -31.5),
		hr_version =
		{
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-1-pipe-S-hr.png",
			priority = "extra-high",
			width = 88,
			height = 61,
			shift = util.by_pixel(0, -31.25),
			scale = 0.5
		}
	},
	west =
	{
		filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-1-pipe-W.png",
		priority = "extra-high",
		width = 19,
		height = 37,
		shift = util.by_pixel(25.5, 1.5),
		hr_version =
		{
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-1-pipe-W-hr.png",
			priority = "extra-high",
			width = 39,
			height = 73,
			shift = util.by_pixel(25.75, 1.25),
			scale = 0.5
		}
	}
}

--Define fluid boxes list for assembling machine 1: present in Factorio 0.17, removed from base in 0.18 but still needed by Xander Mod
assembler_1_fluid_boxes = {
	{
		production_type = "input",
		pipe_picture = assembler_1_pipepictures,
		pipe_covers = pipecoverspictures(),
		base_area = 10,
		base_level = -1,
		pipe_connections = {{ type = "input", position = {0, -2} }},
		secondary_draw_orders = {north = -1}
	},
	{
		production_type = "output",
		pipe_picture = assembler_1_pipepictures,
		pipe_covers = pipecoverspictures(),
		base_area = 10,
		base_level = 1,
		pipe_connections = {{ type = "output", position = {0, 2} }},
		secondary_draw_orders = {north = -1}
	},
	off_when_no_fluid_recipe = true
}

--Fluid box with 4 input pipe connections, one in the middle of each side, for machines that only have input of a single fluid
xm_4_fluid_boxes_input = {
	{
		production_type = "input",
		pipe_covers = pipecoverspictures(),
		base_level = -1,
		pipe_connections = {
			{position = {0, 2}},
			{position = {0, -2}},
			{position = {2, 0}},
			{position = {-2, 0}}
		}
	}
}