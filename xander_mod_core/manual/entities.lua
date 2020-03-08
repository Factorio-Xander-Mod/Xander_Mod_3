--==========  PRODUCTION  ==========

--Bring in the variable assembler_1_pipepictures to use in defining assembler_1_fluid_boxes
require("functions.entities")

--Define fluid boxes list for assembling machine 1: present in Factorio 0.17, removed from base in 0.18 but still needed by Xander Mod
local assembler_1_fluid_boxes = {
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

--List of fluid boxes: one in the middle of each side, each opposing pair has the same input/output type
local xm_4_fluid_boxes_input = {
	{
		production_type = "input",
		pipe_covers = pipecoverspictures(),
		base_level = -1,
		pipe_connections = {{type = "input", position = {0, 2}}}
	},
	{
		production_type = "input",
		pipe_covers = pipecoverspictures(),
		base_level = 1,
		pipe_connections = {{type = "input", position = {0, -2}}}
	},
	{
		production_type = "input",
		pipe_covers = pipecoverspictures(),
		base_level = 1,
		pipe_connections = {{type = "input", position = {2, 0}}}
	},
	{
		production_type = "input",
		pipe_covers = pipecoverspictures(),
		base_level = 1,
		pipe_connections = {{type = "input", position = {-2, 0}}}
	}
}

--energy
data.raw.boiler["boiler"].icon = "__xander-mod__/graphics/item/production/energy/boiler.png"
data.raw.boiler["boiler"].energy_source.fuel_category = nil
data.raw.boiler["boiler"].energy_source.fuel_categories = {"crude", "chemical"}
find_replace_graphics(data.raw.boiler["boiler"],
{"__base__/graphics/entity/boiler/boiler-E-idle.png", "__base__/graphics/entity/boiler/boiler-N-idle.png", "__base__/graphics/entity/boiler/boiler-S-idle.png", "__base__/graphics/entity/boiler/boiler-W-idle.png", "__base__/graphics/entity/boiler/hr-boiler-E-idle.png", "__base__/graphics/entity/boiler/hr-boiler-N-idle.png", "__base__/graphics/entity/boiler/hr-boiler-S-idle.png", "__base__/graphics/entity/boiler/hr-boiler-W-idle.png"},
{"__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-E.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-N.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-S.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-W.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-E-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-N-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-S-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-W-hr.png"}
)
data.raw.generator["steam-turbine"].maximum_temperature = 300

--extraction-machine
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_category = nil
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_categories = {"crude", "chemical"}
data.raw["assembling-machine"]["ore-processor-0"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["ore-processor-1"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["ore-processor-2"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["waste-dump"].module_specification = nil
data.raw["assembling-machine"]["waste-dump"].working_visualisations = nil

--smelting-machine
data.raw.furnace["stone-furnace"].crafting_categories = {"empty"}
data.raw.furnace["steel-furnace"].crafting_categories = {"empty"}
data.raw.furnace["electric-furnace"].crafting_categories = {"empty"}
data.raw["assembling-machine"]["xm-furnace-stone"].energy_source.fuel_category = nil
data.raw["assembling-machine"]["xm-furnace-stone"].energy_source.fuel_categories = {"crude", "chemical"}
data.raw["assembling-machine"]["xm-furnace-electric"].fluid_boxes = assembler_1_fluid_boxes

--chemical-machine
data.raw["assembling-machine"]["chemical-plant"].icon = "__xander-mod__/graphics/item/production/chemical-machine/chemical-plant.png"
find_replace_graphics(data.raw["assembling-machine"]["chemical-plant"],
	{"__base__/graphics/entity/chemical-plant/chemical-plant.png", "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png"},
	{"__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/chemical-plant.png", "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/chemical-plant-hr.png"})
data.raw["assembling-machine"]["chemical-plant"].module_specification.module_slots = 2
data.raw["assembling-machine"]["chemical-plant"].energy_source.emissions_per_minute = 3
data.raw["assembling-machine"]["chemical-plant"].energy_usage = "180kW"
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"

data.raw["assembling-machine"]["electrolyzer-1"].next_upgrade = nil

--production-machine
data.raw["assembling-machine"]["machine-tool-0"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["machine-tool-1"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["machine-tool-2"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["assembling-machine-0"].ingredient_count = 2
--
data.raw["assembling-machine"]["assembling-machine-1"].fluid_boxes = assembler_1_fluid_boxes
data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories = {"basic-crafting", "crafting", "crafting-with-fluid"}
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 3
data.raw["assembling-machine"]["assembling-machine-1"].crafting_speed = 0.75
data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "80kW"
--
data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"}
data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 5
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 1
data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"}
data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 6
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 1.5
--
data.raw.lab["lab-burner"].module_specification = nil
data.raw.lab["lab-burner"].fast_replaceable_group = "lab"
data.raw.lab["lab"].fast_replaceable_group = "lab"


--==========  LOGISTICS  ==========

data.raw.inserter["burner-inserter"].energy_source.fuel_category = nil
data.raw.inserter["burner-inserter"].energy_source.fuel_categories = {"crude", "chemical"}

data.raw.locomotive["locomotive"].max_speed = 0.6
data.raw.locomotive["locomotive"].max_power = "300kW"
data.raw.locomotive["locomotive"].braking_force = 8
data.raw.locomotive["locomotive"].friction_force = 1
data.raw.locomotive["locomotive"].burner.effectivity = 0.5