--==========  PRODUCTION  ==========

local assembler_1_fluid_boxes = {
	{
		production_type = "input",
		pipe_picture = assembler1pipepictures(),
		pipe_covers = pipecoverspictures(),
		base_area = 10,
		base_level = -1,
		pipe_connections = {{ type = "input", position = {0, -2} }},
		secondary_draw_orders = {north = -1}
	},
	{
		production_type = "output",
		pipe_picture = assembler1pipepictures(),
		pipe_covers = pipecoverspictures(),
		base_area = 10,
		base_level = 1,
		pipe_connections = {{ type = "output", position = {0, 2} }},
		secondary_draw_orders = {north = -1}
	},
	off_when_no_fluid_recipe = true
}
--energy
data.raw.boiler["boiler"].energy_source.fuel_category = nil
data.raw.boiler["boiler"].energy_source.fuel_categories = {"crude", "chemical"}
--extraction-machine
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_category = nil
data.raw["mining-drill"]["burner-mining-drill"].energy_source.fuel_categories = {"crude", "chemical"}
data.raw["assembling-machine"]["ore-processor-0"].fluid_boxes = assembler_1_fluid_boxes
data.raw["assembling-machine"]["ore-processor-1"].fluid_boxes = assembler_1_fluid_boxes

--smelting-machine
data.raw.furnace["stone-furnace"].crafting_categories = {"empty"}
data.raw.furnace["steel-furnace"].crafting_categories = {"empty"}
data.raw.furnace["electric-furnace"].crafting_categories = {"empty"}
data.raw["assembling-machine"]["xm-furnace-stone"].energy_source.fuel_category = nil
data.raw["assembling-machine"]["xm-furnace-stone"].energy_source.fuel_categories = {"crude", "chemical"}
data.raw["assembling-machine"]["xm-furnace-electric"].fluid_boxes = assembler_1_fluid_boxes
--production-machine
data.raw["assembling-machine"]["machine-tool-1"].fluid_boxes = assembler_1_fluid_boxes
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