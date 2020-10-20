--==========  ALL  ==========
xm_all_items_to_impose = {}




--==========  MATERIAL  ==========
local xm_material_items = {}

xm_material_items["raw-material"] = {"raw-chromate-slag", "raw-iron", "raw-nickel", "raw-copper", "raw-silver", "raw-platinum", "raw-gold"}--, "raw-titanium", "raw-zirconium"
xm_material_items["raw-resource"] = {"coal", "copper-ore", "evaporites", "igneous-sulfide", "iron-ore", "laterite", "magnetic", "massive-sulfide", "phosphorite", "sand-heavy", "skarn", "stone", "uranium-ore"}
xm_material_items["milled-resource"] = {}
xm_material_items["concentrate"] = {"conc-chalcocite", "conc-borax", "conc-millerite", "clay", "kaolin", "conc-bauxite", "conc-chromite", "conc-galena", "conc-fluorite", "sand", "conc-cassiterite", "conc-scheelite", "gravel", "limestone", "magnesite"}
xm_material_items["oxide"] = {"sodium-hydroxide", "aluminum-hydroxide", "chromium-oxide", "tungsten-oxide", "lead-oxide"}
xm_material_items["ingot"] = {"aluminum", "chromium", "nickel", "silver", "tin", "tungsten", "platinum", "gold", "lead", "solder"}--, "titanium",
xm_material_items["stock"] = {"iron-plate", "stock-cast-iron", "steel-plate", "stock-alloy", "stock-stainless", "copper-plate", "stock-bronze", "stock-cupronickel", "stock-duralumin"}--, "stock-titanium"
xm_material_items["nonmetal"] = {"graphite", "silicon", "silicon-boule", "phosphorus", "sulfur"}
xm_material_items["terrain"] = {"stone-brick", "cement", "concrete", "hazard-concrete", "refined-concrete", "refined-hazard-concrete"}
xm_material_items["ceramic"] = {"brick-clay", "brick-magnesia", "silicon-carbide", "glass", "fiber-glass", "porcelain"}--, "brick-azs"
xm_material_items["salt"] = {"potash", "saltpeter", "sodium-carbonate", "cryolite"}
xm_material_items["fluid-recipes"] = {}
xm_material_items["organic"] = {"wood", "charcoal", "resin", "phenol", "aromatic", "surfactant", "nitrated-organics"}
xm_material_items["polymer"] = {"plastic-pellets", "plastic-bar", "rubber-raw", "rubber-sbr", "rubber-vulcanized"}
xm_material_items["energetic"] = {"coke", "solid-fuel", "gunpowder", "explosives"}

xm_all_items_to_impose["material"] = xm_material_items




--==========  INTERMEDIATE PRODUCTS  ==========
local xm_intermediate_products_items = {}

xm_intermediate_products_items["mechanical"] = {"iron-stick", "steel-rod", "iron-gear-wheel", "parts-steel", "parts-alloy"}
xm_intermediate_products_items["electrical"] = {"copper-cable", "coil-1", "coil-2", "coil-3", "wire-solder", "wire-gold", "battery"}
xm_intermediate_products_items["data"] = {"laminate-1", "laminate-2", "board-1", "board-2", "board-3", "wafer-0", "wafer-data-1", "wafer-data-2", "wafer-solar", "components-1", "components-2", "components-3", "electronic-circuit", "advanced-circuit", "processing-unit"}
xm_intermediate_products_items["intermediate-product"] = {"piston-unit", "mechanical-steam-engine", "engine-unit", "electric-engine-unit", "motor-2", "motor-3", "flying-robot-frame", "low-density-structure", "rocket-fuel", "rocket-control-unit"}
xm_intermediate_products_items["science-pack"] = {"crude-science-pack", "automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "production-science-pack", "utility-science-pack", "space-science-pack"}

xm_all_items_to_impose["intermediate-products"] = xm_intermediate_products_items




--==========  PRODUCTION  ==========
local xm_production_items = {}

--xm_production_items["tool"] = {"repair-pack", "repair-pack-2"} --Types other than "item"
xm_production_items["energy"] = {"boiler", "boiler-1", "heat-exchanger", "steam-engine", "steam-turbine", "steam-turbine-1", "heat-pipe", "nuclear-reactor", "solar-panel", "solar-panel-2", "accumulator", "small-lamp"}
xm_production_items["extraction-machine"] = {"offshore-pump", "burner-mining-drill", "electric-mining-drill", "electric-mining-drill-2", "pumpjack", "ore-processor-0", "ore-processor-1", "ore-processor-2", "waste-dump"}
xm_production_items["smelting-machine"] = {"xm-furnace-stone", "xm-furnace-brick", "xm-furnace-steel", "xm-furnace-electric", "xm-furnace-plasma", "stone-furnace", "steel-furnace", "electric-furnace"}
xm_production_items["chemical-machine"] = {"chemical-plant", "chem-reactor-2", "chem-reactor-3", "electrolyzer-1", "electrolyzer-2", "oil-refinery", "centrifuge"}
xm_production_items["production-machine"] = {"machine-tool-0", "machine-tool-1", "machine-tool-2", "assembling-machine-0", "assembling-machine-1", "assembling-machine-2", "assembling-machine-3", "lab-burner", "lab"}--, "machine-tool-3"

xm_all_items_to_impose["production"] = xm_production_items




--==========  LOGISTICS  ==========
local xm_logistics_items = {}

xm_logistics_items["storage"] = {"wooden-chest", "iron-chest", "steel-chest"}
xm_logistics_items["belt"] = {"crude-transport-belt", "transport-belt", "fast-transport-belt", "expedited-transport-belt", "express-transport-belt", "crude-underground-belt", "underground-belt", "fast-underground-belt", "expedited-underground-belt", "express-underground-belt", "crude-splitter", "splitter", "fast-splitter", "expedited-splitter", "express-splitter"}
xm_logistics_items["inserter"] = {"burner-inserter", "inserter", "long-handed-inserter", "fast-inserter", "long-fast-inserter", "filter-inserter", "stack-inserter", "stack-filter-inserter"}
xm_logistics_items["energy-pipe-distribution"] = {"pipe", "pipe-to-ground", "storage-tank", "pump", "small-electric-pole", "medium-electric-pole", "big-electric-pole", "big-electric-pole-2", "substation"}
xm_logistics_items["transport"] = {"rail", "train-stop", "rail-signal", "rail-chain-signal", "locomotive", "locomotive-1", "cargo-wagon", "fluid-wagon", "artillery-wagon", "car", "tank"}

xm_all_items_to_impose["logistics"] = xm_logistics_items




--==========  COMBAT  ==========
local xm_combat_items = {}

--xm_combat_items["gun"] = {"pistol", "submachine-gun"} --Types other than "item"
--xm_combat_items["ammo"] = {"firearm-magazine", "piercing-reounds-magazine"} --Types other than "item"
--xm_combat_items["capsule"] = {"grenade"} --Types other than "item"
--xm_combat_items["armor"] = {"light-armor", "heavy-armor"} --Types other than "item"
xm_combat_items["defensive-structure"] = {"gun-turret", "gun-turret-2", "flamethrower-turret", "laser-turret", "artillery-turret", "stone-wall", "gate", "radar"}

xm_all_items_to_impose["combat"] = xm_combat_items

--==========