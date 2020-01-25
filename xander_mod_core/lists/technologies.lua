--==========  ALL  ==========
--Format: name, unit count, science packs, unit time, recipe unlocks
xm_all_technologies_to_impose = {}




--==========  MATERIAL  ==========
local xm_material_technologies = {}

xm_material_technologies["raw-material"] = {
	{"earthen0", 10, {"crude-science-pack"}, 5, {"sand-0", "clay-1", "saltpeter"}, {"washing0"}},
	{"fuels0", 5, {"crude-science-pack"}, 5, {"coke", "potash"}, nil},
	{"glass0", 10, {"crude-science-pack"}, 5, {"glass-0"}, {"earthen0", "fuels0"}}
}

xm_material_technologies["ingot"] = {
	{"solder", 10, {"crude-science-pack"}, 5, {"stock-bronze-1", "solder-0", "resin", "wire-solder-0"}, nil},
	{"tin-lead1", 50, {"automation-science-pack"}, 15, {"tin-1", "lead-1"}, {"solder", "washing1", "advanced-material-processing"}},
	{"iron-refining1", 25, {"automation-science-pack"}, 20, {"raw-iron-0", "iron-plate-1", "stock-cast-iron-1"}, {"automation-science-pack"}},
	{"steel-processing", 30, {"crude-science-pack"}, 10, {"steel-plate", "steel-chest"}, {"fuels0"}},
	{"aluminum", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"conc-bauxite", "aluminum-hydroxide", "cryolite", "aluminum", "stock-duralumin", "stock-bronze-2"}, {"advanced-material-processing-2", "chemical-science-pack"}},
	{"nickel", 80, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-millerite-0", "nickel-0", "stock-cupronickel"}, {"railway", "washing1", "advanced-material-processing", "logistic-science-pack"}},
	--{"tin2", 80, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-millerite-0", "nickel-0", "stock-cupronickel"}, {"railway", "washing1", "advanced-material-processing", "logistic-science-pack"}},
	{"tungsten", 120, {"automation-science-pack", "logistic-science-pack"}, 40, {"conc-scheelite-0", "tungsten-oxide", "tungsten", "stock-alloy-0"}, {"advanced-material-processing-2"}},
	--{"lead2", 80, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-millerite-0", "nickel-0", "stock-cupronickel"}, {"railway", "washing1", "advanced-material-processing", "logistic-science-pack"}},
}

xm_material_technologies["nonmetal"] = {
	{"boron", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-borax", "glass-1"}, {"washing1", "chlorine"}},
	{"silicon", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {"silicon-carbide", "silicon", "graphite-1"}, {"advanced-material-processing-2", "carbon"}},
}

xm_material_technologies["terrain"] = {
	{"concrete", 180, {"automation-science-pack"}, 30, {"cement", "concrete", "hazard-concrete"}, {"washing1", "parts1"}},
	{"concrete-2", 200, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 30, {"refined-concrete", "refined-hazard-concrete"}, {"chemical-science-pack", "concrete", "advanced-material-processing-2"}}
}

xm_material_technologies["ceramic"] = {
	{"ceramics1", 50, {"automation-science-pack"}, 15, {"brick-clay-1", "brick-magnesia", "porcelain"}, {"washing1", "advanced-material-processing"}},
	--{"ceramics2", 50, {"automation-science-pack"}, 15, {"brick-clay-1", "brick-magnesia", "porcelain"}, {"washing1", "advanced-material-processing"}},
}

xm_material_technologies["fluid-recipes"] = {
	{"lubricant", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"lubricant"}, {"parts1", "oil-processing"}},
	{"carbon", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"carbon-fwd", "carbon-rvs", "formaldehyde-1"}, {"electrolysis1", "oil-processing"}},--, "carbon-monoxide"
	{"nitrogen", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"distillation-air", "ammonia", "nitric-acid"}, {"electrolysis1", "oil-processing"}},
	{"fluorine", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-fluorite-0", "hydrogen-fluoride"}, {"washing1", "chlorine", "railway"}},
	{"chlorine", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"distillation-water", "electrolysis-brine", "phenol-1"}, {"electrolysis1", "oil-processing"}},
}

xm_material_technologies["polymer"] = {
	{"phenolic", 40, {"automation-science-pack"}, 20, {"phenol-0", "formaldehyde-0", "uncured-phenolic", "copper-cable-1"}, {"sulfur-processing"}},
	{"plastics", 200, {"automation-science-pack", "logistic-science-pack"}, 30, {"plastic-pellets", "plastic-bar", "rubber-sbr", "rubber-vulcanized-1"}, {"oil-processing"}}
}

xm_material_technologies["energetic"] = {
	{"flammables", 80, {"automation-science-pack", "logistic-science-pack"}, 30, {"diesel"}, {"oil-processing"}},
	{"kvaerner-process", 150, {"automation-science-pack", "logistic-science-pack"}, 30, {"solid-fuel-from-heavy-oil", "solid-fuel-from-light-oil", "solid-fuel-from-petroleum-gas"}, {"carbon", "advanced-material-processing-2"}},
	{"explosives", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"nitrated-organics", "explosives"}, {"nitrogen", "chlorine"}}
}

xm_all_technologies_to_impose["material"] = xm_material_technologies




--==========  INTERMEDIATE PRODUCTS  ==========
local xm_intermediate_products_technologies = {}

xm_intermediate_products_technologies["mechanical"] = {
	{"parts1", 30, {"automation-science-pack"}, 15, {"iron-gear-1", "steel-rod", "parts-steel", "piston-unit-1"}, {"automation", "advanced-material-processing"}},
	{"engine", 100, {"automation-science-pack", "logistic-science-pack"}, 20, {"engine-unit", "pump-1"}, {"sulfur-processing", "logistic-science-pack", "parts1"}}
}

xm_intermediate_products_technologies["electrical"] = {
	{"electricity", 20, {"crude-science-pack"}, 10, {"copper-cable", "coil-1-0", "electric-engine-unit", "steam-engine", "small-electric-pole", "inserter"}, {"glass0"}},
	{"motor2", 60, {"automation-science-pack", "logistic-science-pack"}, 30, {"coil-1-1", "coil-2-0", "motor-1-1", "motor-2-0"}, {"parts1", "sulfur-processing", "logistic-science-pack"}},
	{"battery", 180, {"automation-science-pack", "logistic-science-pack"}, 30, {"battery"}, {"tin-lead1", "electrolysis1", "logistic-science-pack"}},
}

xm_intermediate_products_technologies["data"] = {
	{"circuit0", 20, {"automation-science-pack"}, 15, {"board-1-0", "components-1-0", "electronic-circuit", "inserter-1"}, {"solder", "automation-science-pack"}},
	{"electronics", 80, {"automation-science-pack"}, 30, {"wire-solder-1", "board-1-1", "components-1-1"}, {"phenolic", "ceramics1", "automation"}},
	{"advanced-electronics", 300, {"automation-science-pack", "logistic-science-pack"}, 45, {"laminate-1", "board-1-2", "board-2-0", "components-2-0", "advanced-circuit"}, {"tungsten", "nitrogen", "electronics"}}
}

xm_intermediate_products_technologies["science-pack"] = {
	{"automation-science-pack", 40, {"crude-science-pack"}, 15, {"automation-science-pack"}, {"electricity"}},
	{"logistic-science-pack", 100, {"automation-science-pack"}, 40, {"logistic-science-pack"}, {"electric-engine", "automation"}},
	{"chemical-science-pack", 360, {"automation-science-pack", "logistic-science-pack"}, 60, {"chemical-science-pack"}, {"engine", "boron", "fluorine"}},--, "chemistry2"
}

xm_all_technologies_to_impose["intermediate-products"] = xm_intermediate_products_technologies




--==========  PRODUCTION  ==========
local xm_production_technologies = {}

xm_production_technologies["tool"] = {
	{"repair0", 20, {"automation-science-pack"}, 10, {"repair-pack"}, {"steel-processing"}}
}

xm_production_technologies["energy"] = {
	{"optics", 30, {"automation-science-pack"}, 20, {"small-lamp"}, {"washing1"}}
	--solar energy
}

xm_production_technologies["extraction-machine"] = {
	{"washing0", 5, {"crude-science-pack"}, 5, {"ore-processor-0", "gravel", "limestone-0"}, nil},
	{"washing1", 40, {"automation-science-pack"}, 20, {"ore-processor-1", "magnesite", "graphite-0", "kaolin"}, {"sulfur-processing", "circuit0"}},--, "sodium-carbonate"
	{"washing2", 160, {"automation-science-pack", "logistic-science-pack"}, 45, {"ore-processor-2", "surfactant-0"}, {"advanced-electronics", "motor2"}},--, "conc-scheelite-1", "conc-millerite-1", "conc-fluorite-1"
	{"waste", 100, {"automation-science-pack", "logistic-science-pack"}, 30, {"waste-dump"}, {"landfill"}},
}

xm_production_technologies["smelting-machine"] = {
	{"advanced-material-processing", 80, {"automation-science-pack"}, 30, {"xm-furnace-steel", "steel-plate-1", "copper-plate-1"}, {"iron-refining1"}},
	{"advanced-material-processing-2", 240, {"automation-science-pack", "logistic-science-pack"}, 45, {"xm-furnace-electric", "raw-iron-1", "steel-plate-2", "fiber-glass"}, {"nickel", "ceramics1", "optics", "electrolysis1"}}
}

xm_production_technologies["chemical-machine"] = {
	{"sulfur-processing", 40, {"automation-science-pack"}, 20, {"chemical-plant", "sulfur-0", "sulfuric-acid", "rubber-vulcanized-0"}, {"fluid-handling", "machines0"}},
	{"chemistry2", 280, {"automation-science-pack", "logistic-science-pack"}, 30, {"chem-reactor-2", "sulfur-dioxide-direct", "sulfur-dioxide-h2s", "sulfuric-acid-1"}, {"advanced-electronics", "motor2", "chlorine"}},
	{"oil-processing", 90, {"automation-science-pack", "logistic-science-pack"}, 25, {"pumpjack", "oil-refinery", "basic-oil-processing"}, {"sulfur-processing", "advanced-material-processing", "logistic-science-pack"}},
	{"electrolysis1", 90, {"automation-science-pack"}, 20, {"electrolyzer-1", "electrolysis-acid"}, {"sulfur-processing"}}
	--{"electrolysis2", 90, {"automation-science-pack"}, 20, {"electrolyzer-2", "electrolysis-base"}, {"electrolysis1", "chemistry2"}}
}

xm_production_technologies["production-machine"] = {
	{"machines0", 20, {"crude-science-pack"}, 5, {"machine-tool-0", "assembling-machine-0", "rubber-raw"}, nil},
	{"electric-engine", 20, {"automation-science-pack"}, 10, {"lab", "electric-mining-drill"}, {"circuit0", "logistics"}},
	{"automation", 30, {"automation-science-pack"}, 15, {"machine-tool-1", "assembling-machine-1", "long-handed-inserter"}, {"steel-processing", "machines0", "circuit0"}},
	{"automation-2", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {"machine-tool-2", "assembling-machine-2"}, {"advanced-electronics", "motor2", "fast-inserter"}}
}

xm_all_technologies_to_impose["production"] = xm_production_technologies




--==========  LOGISTICS  ==========
local xm_logistics_technologies = {}

xm_logistics_technologies["belt"] = {
	{"logistics", 40, {"automation-science-pack"}, 15, {"transport-belt", "underground-belt", "splitter"}, {"automation-science-pack", "steel-processing"}},
	{"logistics-2", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {"fast-transport-belt", "fast-underground-belt", "fast-splitter"}, {"concrete"}},
	--{"logistics-3", 240, {"automation-science-pack"}, 30, {"express-transport-belt", "express-underground-belt", "express-splitter"}, {"concrete-2"}},
}

xm_logistics_technologies["inserter"] = {
	{"fast-inserter", 45, {"automation-science-pack", "logistic-science-pack"}, 20, {"fast-inserter", "long-fast-inserter", "filter-inserter"}, {"logistic-science-pack", "electronics", "parts1"}}
}

xm_logistics_technologies["energy-pipe-distribution"] = {
	{"fluid-handling", 30, {"automation-science-pack"}, 20, {"storage-tank", "pump", "offshore-pump-1", "pipe-1", "empty-barrel"}, {"automation-science-pack", "steel-processing"}},
	{"electric-energy-distribution-1", 90, {"automation-science-pack", "logistic-science-pack"}, 30, {"medium-electric-pole", "big-electric-pole"}, {"ceramics1", "parts1", "logistic-science-pack"}}
}

xm_logistics_technologies["transport"] = {
	{"railway", 80, {"automation-science-pack"}, 30, {"rail", "locomotive", "cargo-wagon"}, {"logistics", "parts1"}},
	--{"railway-2", 240, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"rail-1", "locomotive-1", "cargo-wagon-1"}, {"railway", "engine", "automation-2"}},
	{"automated-rail-transportation", 120, {"automation-science-pack"}, 30, {"train-stop"}, {"railway", "parts1"}},
	{"rail-signals", 100, {"automation-science-pack", "logistic-science-pack"}, 40, {"rail-signal", "rail-chain-signal"}, {"automated-rail-transportation", "electronics", "optics"}},
	{"automobilism", 150, {"automation-science-pack", "logistic-science-pack"}, 30, {"car"}, {"engine"}},
	
}
--circuit network

xm_all_technologies_to_impose["logistics"] = xm_logistics_technologies




--==========  COMBAT  ==========
local xm_combat_technologies = {}

xm_combat_technologies["gun"] = {
	{"firearms", 10, {"crude-science-pack"}, 5, {"powder-black-0", "firearm-magazine", "pistol", "light-armor"}},
	{"military", 40, {"automation-science-pack"}, 15, {"submachine-gun", "shotgun", "powder-black-1", "shotgun-shell", "radar"}, {"stone-walls", "turrets", "sulfur-processing", "electric-engine"}},
	{"military-2", 80, {"automation-science-pack", "logistic-science-pack"}, 20, {"piercing-rounds-magazine", "grenade"}, {"military", "advanced-material-processing"}},
}

xm_combat_technologies["armor"] = {
	{"heavy-armor", 45, {"automation-science-pack"}, 30, {"heavy-armor"}, {"military"}}
}

xm_combat_technologies["defensive-structure"] = {
	{"stone-walls", 10, {"crude-science-pack"}, 5, {"stone-wall"}, nil},
	{"turrets", 15, {"automation-science-pack"}, 10, {"gun-turret"}, {"firearms", "automation-science-pack"}}
}

xm_all_technologies_to_impose["combat"] = xm_combat_technologies