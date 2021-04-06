--==========  TREES  ==========
--Increase wood yield to 24 per tree
for i, entry in pairs(data.raw.tree) do
	data.raw.tree[entry.name].minable.count = 24
end




--==========  PRODUCTION  ==========

--energy
data.raw.boiler["boiler"].fast_replaceable_group = "boiler"
data.raw.boiler["boiler"].next_upgrade = "boiler-1"
data.raw.boiler["boiler"].energy_source.fuel_categories = {"crude", "chemical"}
data.raw.boiler["boiler-1"].fast_replaceable_group = "boiler"
data.raw.boiler["boiler-1"].energy_source.fuel_categories = {"crude", "chemical"}

--extraction-machine
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
data.raw["assembling-machine"]["xm-furnace-stone"].energy_source.fuel_categories = {"crude", "chemical"}
data.raw["assembling-machine"]["xm-furnace-electric"].fluid_boxes = assembler_1_fluid_boxes
data.raw["assembling-machine"]["xm-furnace-plasma"].fluid_boxes = assembler_1_fluid_boxes

--chemical-machine
data.raw["assembling-machine"]["chemical-plant"].icon = "__xander-mod__/graphics/item/production/chemical-machine/chemical-plant.png"
find_replace_graphics(data.raw["assembling-machine"]["chemical-plant"],
	{"__base__/graphics/entity/chemical-plant/chemical-plant.png", "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png"},
	{"__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/chemical-plant.png", "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/chemical-plant-hr.png"})
data.raw["assembling-machine"]["chemical-plant"].module_specification.module_slots = 2
data.raw["assembling-machine"]["chemical-plant"].energy_source.emissions_per_minute = 3
data.raw["assembling-machine"]["chemical-plant"].energy_usage = "180kW"
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
data.raw["assembling-machine"]["chem-reactor-2"].fast_replaceable_group = "chemical-plant"
data.raw["assembling-machine"]["chem-reactor-3"].fast_replaceable_group = "chemical-plant"
data.raw["assembling-machine"]["chem-reactor-3"].next_upgrade = nil
data.raw["assembling-machine"]["electrolyzer-2"].next_upgrade = nil
data.raw["assembling-machine"]["centrifuge"].fluid_boxes = data.raw["assembling-machine"]["chemical-plant"].fluid_boxes

--production-machine
data.raw["assembling-machine"]["machine-tool-0"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["machine-tool-1"].fluid_boxes = xm_4_fluid_boxes_input
data.raw["assembling-machine"]["machine-tool-2"].fluid_boxes = xm_4_fluid_boxes_input
--
data.raw["assembling-machine"]["assembling-machine-0"].ingredient_count = 2
--
data.raw["assembling-machine"]["assembling-machine-1"].fluid_boxes = assembler_1_fluid_boxes
data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories = {"basic-crafting", "crafting", "crafting-with-fluid"}
data.raw["assembling-machine"]["assembling-machine-1"].crafting_speed = 0.75
--
data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"}
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 1

data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"}
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 1.5
--
data.raw.lab["lab-burner"].module_specification = nil
data.raw.lab["lab-burner"].fast_replaceable_group = "lab"
data.raw.lab["lab"].fast_replaceable_group = "lab"




--==========  LOGISTICS  ==========

local logistics_entities_fuel_switch = {{type = "locomotive", name = "locomotive"}, {type = "locomotive", name = "locomotive-1"}, {type = "car", name = "car"}, {type = "car", name = "tank"}}
for _, entry in pairs(logistics_entities_fuel_switch) do
	data.raw[entry.type][entry.name].burner.fuel_categories = {"crude", "chemical"}
end
data.raw.inserter["burner-inserter"].energy_source.fuel_categories = {"crude", "chemical"}

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