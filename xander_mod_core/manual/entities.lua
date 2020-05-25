--==========  PRODUCTION  ==========


--energy
data.raw.boiler["boiler-1"].fast_replaceable_group = "boiler"
data.raw.boiler["boiler"].icon = "__xander-mod__/graphics/item/production/energy/boiler.png"
data.raw.boiler["boiler"].fast_replaceable_group = "boiler"
data.raw.boiler["boiler"].next_upgrade = "boiler-1"
data.raw.boiler["boiler"].energy_source.fuel_category = nil
data.raw.boiler["boiler"].energy_source.fuel_categories = {"crude", "chemical"}
--data.raw.boiler["boiler"].energy_source.effectivity = 0.6
find_replace_graphics(data.raw.boiler["boiler"],
{"__base__/graphics/entity/boiler/boiler-E-idle.png", "__base__/graphics/entity/boiler/boiler-N-idle.png", "__base__/graphics/entity/boiler/boiler-S-idle.png", "__base__/graphics/entity/boiler/boiler-W-idle.png", "__base__/graphics/entity/boiler/hr-boiler-E-idle.png", "__base__/graphics/entity/boiler/hr-boiler-N-idle.png", "__base__/graphics/entity/boiler/hr-boiler-S-idle.png", "__base__/graphics/entity/boiler/hr-boiler-W-idle.png"},
{"__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-E.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-N.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-S.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-W.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-E-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-N-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-S-hr.png", "__xander-mod-graphics-1__/graphics/entity/production/energy/boiler-W-hr.png"}
)
data.raw.generator["steam-turbine"].maximum_temperature = 315
data.raw.generator["steam-turbine"].fluid_usage_per_tick = 0.5

--extraction-machine
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_category = nil
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_categories = {"crude", "chemical"}
data.raw["assembling-machine"]["ore-processor-0"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["ore-processor-0"].working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound
data.raw["assembling-machine"]["ore-processor-1"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["ore-processor-1"].working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound
data.raw["assembling-machine"]["ore-processor-2"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["ore-processor-2"].working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound
data.raw["assembling-machine"]["waste-dump"].module_specification = nil
data.raw["assembling-machine"]["waste-dump"].working_visualisations = nil
data.raw["assembling-machine"]["waste-dump"].working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound

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
--
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

data.raw["transport-belt"]["express-transport-belt"].speed = 0.125
data.raw["underground-belt"]["express-underground-belt"].speed = 0.125
data.raw["underground-belt"]["express-underground-belt"].max_distance = 11
data.raw["splitter"]["express-splitter"].speed = 0.125

data.raw.inserter["burner-inserter"].energy_source.fuel_category = nil
data.raw.inserter["burner-inserter"].energy_source.fuel_categories = {"crude", "chemical"}

data.raw.locomotive["locomotive"].icon = "__xander-mod__/graphics/item/logistics/transport/locomotive-1.png"
data.raw.locomotive["locomotive"].max_speed = 0.6
data.raw.locomotive["locomotive"].max_power = "400kW"
data.raw.locomotive["locomotive"].braking_force = 8
data.raw.locomotive["locomotive"].friction_force = 1
data.raw.locomotive["locomotive"].burner.effectivity = 0.5
data.raw.locomotive["locomotive"].burner.fuel_category = nil
data.raw.locomotive["locomotive"].burner.fuel_categories = {"crude", "chemical"}
data.raw.locomotive["locomotive"].sound_minimum_speed = 0.2

for i = 1, 8 do
	data.raw.locomotive["locomotive"].pictures.layers[1].filenames[i] = "__xander-mod-graphics-1__/graphics/entity/logistics/transport/locomotive-" .. i .. ".png"
	data.raw.locomotive["locomotive"].pictures.layers[1].hr_version.filenames[2 * i] = "__xander-mod-graphics-1__/graphics/entity/logistics/transport/locomotive-hr-" .. (2 * i) .. ".png"
	data.raw.locomotive["locomotive"].pictures.layers[1].hr_version.filenames[(2 * i) - 1] = "__xander-mod-graphics-1__/graphics/entity/logistics/transport/locomotive-hr-" .. ((2 * i) - 1) .. ".png"
	data.raw.locomotive["locomotive"].pictures.layers[2].filenames[i] = "__xander-mod-graphics-1__/graphics/entity/logistics/transport/locomotive-mask.png"
	data.raw.locomotive["locomotive"].pictures.layers[2].hr_version.filenames[2 * i] = "__xander-mod-graphics-1__/graphics/entity/logistics/transport/locomotive-mask-hr.png"
	data.raw.locomotive["locomotive"].pictures.layers[2].hr_version.filenames[(2 * i) - 1] = "__xander-mod-graphics-1__/graphics/entity/logistics/transport/locomotive-mask-hr.png"
end


--==========  COMBAT  ==========

data.raw["ammo-turret"]["gun-turret-2"].fast_replaceable_group = "gun-turret"
data.raw["ammo-turret"]["gun-turret"].fast_replaceable_group = "gun-turret"
data.raw["ammo-turret"]["gun-turret"].next_upgrade = "gun-turret-2"