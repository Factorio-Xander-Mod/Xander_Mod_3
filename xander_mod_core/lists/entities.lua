--==========  ALL  ==========
--Format: key-value structured list, with one entry storing information for each entity
xm_all_entities_to_impose = {}

--==========  PRODUCTION  ==========
local xm_production_entities = {}

xm_production_entities["energy"] = {
	--order placeholder
	{
		type = "boiler",
		name = "boiler"
	},
	{
		type = "boiler",
		name = "boiler-1",
		parent_type = "boiler",
		parent_name = "boiler",
		target_temperature = 315,
		energy_consumption = "3.6MW",
		--effectivity = 0.8,
		emissions_per_minute = 40,
		graphics_from = {"__base__/graphics/entity/boiler/boiler-E-idle.png", "__base__/graphics/entity/boiler/boiler-N-idle.png", "__base__/graphics/entity/boiler/boiler-S-idle.png", "__base__/graphics/entity/boiler/boiler-W-idle.png", "__base__/graphics/entity/boiler/hr-boiler-E-idle.png", "__base__/graphics/entity/boiler/hr-boiler-N-idle.png", "__base__/graphics/entity/boiler/hr-boiler-S-idle.png", "__base__/graphics/entity/boiler/hr-boiler-W-idle.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-1-E.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-1-N.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-1-S.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-1-W.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-1-E-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-1-N-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-1-S-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-1-W-hr.png"}
	},
	--order placeholder
	{
		type = "boiler",
		name = "heat-exchanger",
	},
	--order placeholder
	{
		type = "generator",
		name = "steam-engine",
	},
	--order placeholder
	{
		type = "generator",
		name = "steam-turbine",
	},
	--high-temperature steam turbine
	{
		type = "generator",
		name = "steam-turbine-1",
		parent_type = "generator",
		parent_name = "steam-turbine",
		graphics_from = {"__base__/graphics/entity/steam-turbine/steam-turbine-H.png", "__base__/graphics/entity/steam-turbine/steam-turbine-V.png", "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png", "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/energy/steam-turbine-1-H.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/steam-turbine-1-V.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/steam-turbine-1-H-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/steam-turbine-1-V-hr.png"}
	},
}

xm_production_entities["extraction-machine"] = {
	--order placeholder
	{
		type = "offshore-pump",
		name = "offshore-pump"
	},
	--order placeholder
	{
		type = "mining-drill",
		name = "burner-mining-drill"
	},
	--order placeholder
	{
		type = "mining-drill",
		name = "electric-mining-drill"
	},
	--order placeholder
	{
		type = "mining-drill",
		name = "pumpjack"
	},
	{
		type = "assembling-machine",
		name = "ore-processor-0",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		crafting_categories = {"washing"},
		crafting_speed = 0.5,
		ingredient_count = 2,
		next_upgrade = "ore-processor-1",
		energy_source = {type = "burner", fuel_categories = {"crude", "chemical"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = 0.5, smoke = data.raw["mining-drill"]["burner-mining-drill"].energy_source.smoke},
		energy_usage = "50kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-0.png",
			priority = "high",
			width = 108,
			height = 130,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-0-hr.png",
				priority = "high",
				width = 216,
				height = 260,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "ore-processor"
	},
	{
		type = "assembling-machine",
		name = "ore-processor-1",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		crafting_categories = {"washing"},
		crafting_speed = 1,
		ingredient_count = 3,
		next_upgrade = "ore-processor-2",
		emissions_per_minute = 1,
		energy_usage = "70kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-1.png",
			priority = "high",
			width = 108,
			height = 130,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-1-hr.png",
				priority = "high",
				width = 216,
				height = 260,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "ore-processor"
	},
	{
		type = "assembling-machine",
		name = "ore-processor-2",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-2",
		crafting_categories = {"washing"},--, "advanced-washing"
		crafting_speed = 1.5,
		ingredient_count = 4,
		next_upgrade = "ore-processor-2",--3
		emissions_per_minute = 1.5,
		energy_usage = "120kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-2.png",
			priority = "high",
			width = 108,
			height = 133,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-2-hr.png",
				priority = "high",
				width = 216,
				height = 266,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "ore-processor"
	},
	{
		type = "assembling-machine",
		name = "waste-dump",
		parent_type = "assembling-machine",
		parent_name = "chemical-plant",
		collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
		selection_box = {{-5, -5}, {5, 5}},
		crafting_categories = {"waste"},
		crafting_speed = 1,
		energy_usage = "80kW",
		emissions_per_minute = 6,
		fluid_boxes = 
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{type = "input", position = {5.5, 3.5}}}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{type = "input", position = {3.5, -5.5}}}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{type = "input", position = {-5.5, -3.5}}}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{type = "input", position = {-3.5, 5.5}}}
			}
		},
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/waste-dump.png",
			priority = "high",
			width = 384,
			height = 384,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/waste-dump-hr.png",
				priority = "high",
				width = 768,
				height = 768,
				frame_count = 1,
				scale = 0.5
			}
		} }}
	}
}

xm_production_entities["smelting-machine"] = {
	{
		type = "assembling-machine",
		name = "xm-furnace-stone",
		parent_type = "furnace",
		parent_name = "stone-furnace",
		crafting_categories = {"kiln"},
		energy_usage = "250kW",
		crafting_speed = 0.5,
		emissions_per_minute = 0.5,
		ingredient_count = 2,
		next_upgrade = "xm-furnace-brick",
		graphics_from = {"__base__/graphics/entity/stone-furnace/stone-furnace.png", "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/smelting-machine/xm-furnace-stone.png", "__xander-mod-graphics-1__/graphics/entity/production/smelting-machine/xm-furnace-stone-hr.png"}
	},
	{
		type = "assembling-machine",
		name = "xm-furnace-brick",
		parent_type = "furnace",
		parent_name = "stone-furnace",
		crafting_categories = {"kiln", "smelting"},
		energy_usage = "500kW",
		crafting_speed = 1,
		emissions_per_minute = 1,
		fuel_category = "chemical",
		ingredient_count = 3,
		next_upgrade = "xm-furnace-steel",
		graphics_from = {"__base__/graphics/entity/stone-furnace/stone-furnace.png", "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/smelting-machine/xm-furnace-brick.png", "__xander-mod-graphics-1__/graphics/entity/production/smelting-machine/xm-furnace-brick-hr.png"}
	},
	{
		type = "assembling-machine",
		name = "xm-furnace-steel",
		parent_type = "furnace",
		parent_name = "steel-furnace",
		crafting_categories = {"smelting", "refining"},
		energy_usage = "1MW",
		crafting_speed = 1.5,
		emissions_per_minute = 2,
		fuel_category = "chemical",
		ingredient_count = 4
	},
	{
		type = "assembling-machine",
		name = "xm-furnace-electric",
		parent_type = "furnace",
		parent_name = "electric-furnace",
		crafting_categories = {"refining", "refining-electric"},
		energy_usage = "1MW",
		emissions_per_minute = 0.5,
		crafting_speed = 2,
		ingredient_count = 5
	},
	--order placeholder
	{
		type = "furnace",
		name = "stone-furnace"
	},
	--order placeholder
	{
		type = "furnace",
		name = "steel-furnace"
	},
	--order placeholder
	{
		type = "furnace",
		name = "electric-furnace"
	}
}

xm_production_entities["chemical-machine"] = {
	--order placeholder
	{
		type = "assembling-machine",
		name = "chemical-plant"
	},
	{
		type = "assembling-machine",
		name = "chem-reactor-2",
		parent_type = "assembling-machine",
		parent_name = "chemical-plant",
		crafting_categories = {"chemistry"},
		crafting_speed = 1.5,
		emissions_per_minute = 4,
		energy_usage = "360kW",
		next_upgrade = "chem-reactor-3",
		fast_replaceable_group = "chemical-plant"
	},
	{
		type = "assembling-machine",
		name = "chem-reactor-3",
		parent_type = "assembling-machine",
		parent_name = "chemical-plant",
		crafting_categories = {"chemistry"},
		module_slots = 4,
		crafting_speed = 2,
		emissions_per_minute = 5,
		energy_usage = "480kW",
		fast_replaceable_group = "chemical-plant",
		graphics_from = {"__base__/graphics/entity/chemical-plant/chemical-plant.png", "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/chem-reactor-3.png", "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/chem-reactor-3-hr.png"}
	},
	{
		type = "assembling-machine",
		name = "electrolyzer-1",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-2",
		crafting_categories = {"electrolysis"},
		emissions_per_minute = 0.75,
		crafting_speed = 0.75,
		fluid_boxes = {
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_level = -1,
				pipe_connections = {{type = "input", position = {0, 2}}}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_level = -1,
				pipe_connections = {{type = "input", position = {0, -2}}}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{type = "output", position = {2, 0}}}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{type = "output", position = {-2, 0}}}
			}
		},
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/electrolyzer-1.png",
			priority = "high",
			width = 113,
			height = 113,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/electrolyzer-1-hr.png",
				priority = "high",
				width = 227,
				height = 227,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		working_sound = {
			sound = {{filename = "__base__/sound/chemical-plant.ogg", volume = 0.8}},
			idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
			apparent_volume = 1.5
		},
		next_upgrade = "electrolyzer-2",
		fast_replaceable_group = "electrolyzer"
	},
	{
		type = "assembling-machine",
		name = "electrolyzer-2",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-2",
		crafting_categories = {"electrolysis"},
		emissions_per_minute = 1.5,
		crafting_speed = 1.5,
		fluid_boxes = {
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_level = -1,
				pipe_connections = {{type = "input", position = {0, 2}}}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_level = -1,
				pipe_connections = {{type = "input", position = {0, -2}}}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{type = "output", position = {2, 0}}}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{type = "output", position = {-2, 0}}}
			}
		},
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/electrolyzer-1.png",
			priority = "high",
			width = 113,
			height = 113,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/electrolyzer-1-hr.png",
				priority = "high",
				width = 227,
				height = 227,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		working_sound = {
			sound = {{filename = "__base__/sound/chemical-plant.ogg", volume = 0.8}},
			idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
			apparent_volume = 1.5
		},
		--next_upgrade = "electrolyzer-3",
		fast_replaceable_group = "electrolyzer"
	},
	--order placeholder
	{
		type = "assembling-machine",
		name = "oil-refinery"
	},
	--order placeholder
	{
		type = "assembling-machine",
		name = "centrifuge"
	}
}

xm_production_entities["production-machine"] = {
	{
		type = "assembling-machine",
		name = "machine-tool-0",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		next_upgrade = "machine-tool-1",
		crafting_categories = {"basic-machine"},
		crafting_speed = 0.5,
		ingredient_count = 2,
		energy_source = {type = "burner", fuel_categories = {"crude", "chemical"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = 0.5, smoke = data.raw["mining-drill"]["burner-mining-drill"].energy_source.smoke},
		energy_usage = "60kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-0.png",
			priority = "high",
			width = 108,
			height = 130,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-0-hr.png",
				priority = "high",
				width = 216,
				height = 260,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "machine-tool"
	},
	{
		type = "assembling-machine",
		name = "machine-tool-1",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		next_upgrade = "machine-tool-2",
		crafting_categories = {"basic-machine", "machine"},
		crafting_speed = 0.75,
		ingredient_count = 2,
		emissions_per_minute = 0.75,
		energy_usage = "80kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-1.png",
			priority = "high",
			width = 108,
			height = 130,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-1-hr.png",
				priority = "high",
				width = 216,
				height = 260,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "machine-tool"
	},
	{
		type = "assembling-machine",
		name = "machine-tool-2",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-2",
		next_upgrade = "machine-tool-2",--3
		crafting_categories = {"machine"},--, "advanced-machine"
		crafting_speed = 1.5,
		ingredient_count = 4,
		emissions_per_minute = 1.5,
		energy_usage = "160kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-2.png",
			priority = "high",
			width = 108,
			height = 130,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-2-hr.png",
				priority = "high",
				width = 216,
				height = 260,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "machine-tool"
	},
	{
		type = "assembling-machine",
		name = "assembling-machine-0",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		next_upgrade = "assembling-machine-1",
		crafting_categories = {"basic-crafting", "crafting"},
		crafting_speed = 0.5,
		ingredient_count = 2,
		energy_source = {type = "burner", fuel_categories = {"crude", "chemical"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = 0.5, smoke = data.raw["mining-drill"]["burner-mining-drill"].energy_source.smoke},
		energy_usage = "60kW",
		graphics_from = {"__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png", "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-0.png", "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-0-hr.png"}
	},
	--order placeholder
	{
		type = "assembling-machine",
		name = "assembling-machine-1"
	},
	--order placeholder
	{
		type = "assembling-machine",
		name = "assembling-machine-2"
	},
	--order placeholder
	{
		type = "assembling-machine",
		name = "assembling-machine-3"
	},
	{
		type = "lab",
		name = "lab-burner",
		parent_type = "lab",
		parent_name = "lab",
		next_upgrade = "lab",
		researching_speed = 0.5,
		energy_source = {type = "burner", fuel_categories = {"crude", "chemical"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = 0.5, smoke = data.raw["mining-drill"]["burner-mining-drill"].energy_source.smoke},
		energy_usage = "40kW",
		inputs = {"crude-science-pack", "automation-science-pack"},
		graphics_from = {"__base__/graphics/entity/lab/lab.png", "__base__/graphics/entity/lab/hr-lab.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/production-machine/lab-red.png", "__xander-mod-graphics-1__/graphics/entity/production/production-machine/lab-red-hr.png"}
	}
}

xm_all_entities_to_impose["production"] = xm_production_entities

--==========  LOGISTICS  ==========
local xm_logistics_entities = {}

xm_logistics_entities["belt"] = {
	--crude belt
	{
		type = "transport-belt",
		name = "crude-transport-belt",
		parent_type = "transport-belt",
		parent_name = "transport-belt",
		next_upgrade = "transport-belt",
		speed = 0.015625,--1/64, half of the 1/32 for the base transport-belt
		graphics_from = {"__base__/graphics/entity/transport-belt/transport-belt.png", "__base__/graphics/entity/transport-belt/hr-transport-belt.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-transport-belt.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-transport-belt-hr.png"}
	},
	--order placeholder
	{
		type = "transport-belt",
		name = "transport-belt"
	},
	--order placeholder
	{
		type = "transport-belt",
		name = "fast-transport-belt"
	},
	--expedited belt
	{
		type = "transport-belt",
		name = "expedited-transport-belt",
		parent_type = "transport-belt",
		parent_name = "express-transport-belt",
		next_upgrade = "express-transport-belt",
		speed = 0.09375,--3/32, same as the base express-transport-belt
		graphics_from = {"__base__/graphics/entity/express-transport-belt/express-transport-belt.png", "__base__/graphics/entity/express-transport-belt/hr-express-transport-belt.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-transport-belt.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-transport-belt-hr.png"}
	},
	--order placeholder
	{
		type = "transport-belt",
		name = "express-transport-belt"
	},
	--crude underground
	{
		type = "underground-belt",
		name = "crude-underground-belt",
		parent_type = "underground-belt",
		parent_name = "underground-belt",
		max_distance = 3,
		next_upgrade = "underground-belt",
		speed = 0.015625,--1/64, half of the 1/32 for the base transport-belt
		graphics_from = {"__base__/graphics/entity/transport-belt/transport-belt.png", "__base__/graphics/entity/transport-belt/hr-transport-belt.png", "__base__/graphics/entity/underground-belt/underground-belt-structure.png", "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-transport-belt.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-transport-belt-hr.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-underground-belt.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-underground-belt-hr.png"}
	},
	--order placeholder
	{
		type = "underground-belt",
		name = "underground-belt"
	},
	--order placeholder
	{
		type = "underground-belt",
		name = "fast-underground-belt"
	},
	--expedited underground
	{
		type = "underground-belt",
		name = "expedited-underground-belt",
		parent_type = "underground-belt",
		parent_name = "express-underground-belt",
		max_distance = 9,
		next_upgrade = "express-underground-belt",
		speed = 0.09375,--3/32, same as the base express-transport-belt
		graphics_from = {"__base__/graphics/entity/express-transport-belt/express-transport-belt.png", "__base__/graphics/entity/express-transport-belt/hr-express-transport-belt.png", "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png", "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-transport-belt.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-transport-belt-hr.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-underground-belt.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-underground-belt-hr.png"}
	},
	--order placeholder
	{
		type = "underground-belt",
		name = "express-underground-belt"
	},
	--crude splitter
	{
		type = "splitter",
		name = "crude-splitter",
		parent_type = "splitter",
		parent_name = "splitter",
		structure_animation_speed_coefficient = 0.35,
		next_upgrade = "splitter",
		speed = 0.015625,--1/64, half of the 1/32 for the base transport-belt
		graphics_from = {
			"__base__/graphics/entity/transport-belt/transport-belt.png",
			"__base__/graphics/entity/transport-belt/hr-transport-belt.png",
			"__base__/graphics/entity/splitter/splitter-north.png",
			"__base__/graphics/entity/splitter/hr-splitter-north.png",
			"__base__/graphics/entity/splitter/splitter-east.png",
			"__base__/graphics/entity/splitter/splitter-east-top_patch.png",
			"__base__/graphics/entity/splitter/hr-splitter-east.png",
			"__base__/graphics/entity/splitter/hr-splitter-east-top_patch.png",
			"__base__/graphics/entity/splitter/splitter-south.png",
			"__base__/graphics/entity/splitter/hr-splitter-south.png",
			"__base__/graphics/entity/splitter/splitter-west.png",
			"__base__/graphics/entity/splitter/splitter-west-top_patch.png",
			"__base__/graphics/entity/splitter/hr-splitter-west.png",
			"__base__/graphics/entity/splitter/hr-splitter-west-top_patch.png"
		},
		graphics_to = {
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-transport-belt.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-transport-belt-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-north.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-north-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-east-bottom.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-east-top.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-east-bottom-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-east-top-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-south.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-south-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-west-bottom.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-west-top.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-west-bottom-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-west-top-hr.png"
		}
	},
	--order placeholder
	{
		type = "splitter",
		name = "splitter"
	},
	--order placeholder
	{
		type = "splitter",
		name = "fast-splitter"
	},
	--expedited splitter
	{
		type = "splitter",
		name = "expedited-splitter",
		parent_type = "splitter",
		parent_name = "express-splitter",
		structure_animation_speed_coefficient = 0.35,
		next_upgrade = "express-splitter",
		speed = 0.09375,--3/32, same as the base express-transport-belt
		graphics_from = {
			"__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
			"__base__/graphics/entity/express-transport-belt/hr-express-transport-belt.png",
			"__base__/graphics/entity/express-splitter/splitter-north.png",
			"__base__/graphics/entity/express-splitter/hr-express-splitter-north.png",
			"__base__/graphics/entity/express-splitter/express-splitter-east.png",
			"__base__/graphics/entity/express-splitter/express-splitter-east-top_patch.png",
			"__base__/graphics/entity/express-splitter/hr-express-splitter-east.png",
			"__base__/graphics/entity/express-splitter/hr-express-splitter-east-top_patch.png",
			"__base__/graphics/entity/express-splitter/express-splitter-south.png",
			"__base__/graphics/entity/express-splitter/hr-express-splitter-south.png",
			"__base__/graphics/entity/express-splitter/express-splitter-west.png",
			"__base__/graphics/entity/express-splitter/express-splitter-west-top_patch.png",
			"__base__/graphics/entity/express-splitter/hr-express-splitter-west.png",
			"__base__/graphics/entity/express-splitter/hr-express-splitter-west-top_patch.png"
		},
		graphics_to = {
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-transport-belt.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-transport-belt-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-north.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-north-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-east-bottom.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-east-top.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-east-bottom-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-east-top-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-south.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-south-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-west-bottom.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-west-top.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-west-bottom-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/expedited-splitter-west-top-hr.png"
		}
	},
	--order placeholder
	{
		type = "splitter",
		name = "express-splitter"
	},
}

xm_logistics_entities["inserter"] = {
	{
		type = "inserter",
		name = "long-fast-inserter",
		parent_type = "inserter",
		parent_name = "long-handed-inserter",
		extension_speed = 0.07,
		rotation_speed = 0.04,
		energy_per_movement = "7KJ",
		energy_per_rotation = "7KJ",
		graphics_from = {
			"__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
			"__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-base.png",
			"__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
			"__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-closed.png",
			"__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
			"__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-open.png",
			"__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
			"__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-platform.png"
		},
		graphics_to = {
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-base.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-base-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-closed.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-closed-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-open.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-open-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-platform.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-platform-hr.png"
		}
	}
}

xm_logistics_entities["transport"] = {
	{
		type = "locomotive",
		name = "locomotive-1",
		parent_type = "locomotive",
		parent_name = "locomotive",
		icon = data.raw.locomotive["locomotive"].icon,
		max_health = 1500,
		sound_minimum_speed = 0.5
	}
}

xm_all_entities_to_impose["logistics"] = xm_logistics_entities

--==========  COMBAT  ==========
local xm_combat_entities = {}

xm_combat_entities["defensive-structure"] = {
	--order placeholder
	{
		type = "ammo-turret",
		name = "gun-turret"
	},
	--high-power gun turret
	{
		type = "ammo-turret",
		name = "gun-turret-2",
		parent_type = "ammo-turret",
		parent_name = "gun-turret",
		max_health = 600,
		preparing_speed = 0.1,
		cooldown = 4,
		range = 24,
		inventory_size = 2
	}
}

xm_all_entities_to_impose["combat"] = xm_combat_entities
