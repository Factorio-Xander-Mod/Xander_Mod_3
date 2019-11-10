--==========  ALL  ==========
--Format: name, unit count, science packs, unit time, recipe unlocks
xm_all_technologies_to_impose = {}




--==========  MATERIAL  ==========
local xm_material_technologies = {}

xm_material_technologies["raw-material"] = {
	{"earthen0", 10, {"crude-science-pack"}, 5, {"sand-0", "clay-1", "saltpeter"}, {"washing0"}},
	{"fuels0", 5, {"crude-science-pack"}, 5, {"coke", "potash"}, nil},--, "wood-fibers"
	{"glass0", 10, {"crude-science-pack"}, 5, {"glass-0"}, {"earthen0", "fuels0"}}
}

xm_material_technologies["ingot"] = {
	{"solder", 10, {"crude-science-pack"}, 5, {"stock-bronze-1", "solder-0", "resin", "wire-solder-0"}, nil},
	{"tin-lead1", 50, {"automation-science-pack"}, 15, {"tin-1", "lead-1"}, {"solder", "washing1", "advanced-material-processing"}},
	{"iron-refining1", 25, {"automation-science-pack"}, 20, {"raw-iron-0", "iron-plate-1", "stock-cast-iron-1"}, {"automation-science-pack"}},
	{"steel-processing", 30, {"crude-science-pack"}, 10, {"steel-plate", "steel-chest"}, {"fuels0"}},
	--{"aluminum", 120, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 30, {"conc-bauxite", "aluminum-hydroxide", "aluminum", "stock-duralumin"}, {"advanced-material-processing-2", "fluorine"}},
	{"nickel", 80, {"automation-science-pack"}, 30, {"conc-millerite-0", "nickel-0", "stock-cupronickel"}, {"railway", "washing1", "advanced-material-processing"}},
	{"tungsten", 120, {"automation-science-pack", "logistic-science-pack"}, 40, {"conc-scheelite-0", "tungsten-oxide", "tungsten", "stock-alloy-0"}, {"advanced-material-processing-2"}}
}

xm_material_technologies["terrain"] = {
	{"concrete", 150, {"automation-science-pack", "logistic-science-pack"}, 30, {"cement", "concrete", "hazard-concrete"}, {"washing1", "parts1"}},
	{"concrete-2", 200, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 30, {"refined-concrete", "refined-hazard-concrete"}, {"chemical-science-pack", "concrete", "advanced-material-processing-2"}}
}

xm_material_technologies["ceramic"] = {
	{"ceramics1", 50, {"automation-science-pack"}, 15, {"brick-clay-1", "brick-magnesia", "glass-1", "porcelain"}, {"washing1", "advanced-material-processing"}}
}

xm_material_technologies["fluid-recipes"] = {
	{"nitrogen", 100, {"automation-science-pack", "logistic-science-pack"}, 30, {"distillation-air", "ammonia"}, {"electrolysis1", "oil-processing"}},
	--{"fluorine", 100, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-fluorite-0", "hydrogen-fluoride", "cryolite"}, {"chlorine", "railway"}},
	{"chlorine", 100, {"automation-science-pack", "logistic-science-pack"}, 30, {"distillation-water", "electrolysis-brine"}, {"electrolysis1", "oil-processing"}}--, "hydrogen-chloride"
}

xm_material_technologies["organic"] = {
	{"phenolic", 40, {"automation-science-pack"}, 20, {"phenol-0", "formaldehyde", "uncured-phenolic", "copper-cable-1"}, {"sulfur-processing"}}
}

xm_material_technologies["polymer"] = {
	{"plastics", 200, {"automation-science-pack", "logistic-science-pack"}, 30, {"plastic-bar", "rubber-sbr", "rubber-vulcanized-1"}, {"oil-processing"}}--Replace polyethylene with better phenolic?
}

xm_material_technologies["energetic"] = {
	{"flammables", 80, {"automation-science-pack", "logistic-science-pack"}, 30, {"solid-fuel-from-light-oil", "solid-fuel-from-petroleum-gas"}, {"oil-processing"}},
	{"explosives", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"explosives", "nitric-acid-0"}, {"oil-processing"}}
}

xm_all_technologies_to_impose["material"] = xm_material_technologies




--==========  INTERMEDIATE PRODUCTS  ==========
local xm_intermediate_products_technologies = {}

xm_intermediate_products_technologies["mechanical"] = {
	{"parts1", 30, {"automation-science-pack"}, 15, {"iron-gear-1", "steel-rod", "parts-steel", "piston-unit-1"}, {"automation", "advanced-material-processing"}},--, "coil-1-1", "coil-2-0"
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
	{"advanced-electronics", 300, {"automation-science-pack", "logistic-science-pack"}, 45, {"laminate-1", "board-1-2", "board-2-0", "components-2-0", "advanced-circuit"}, {"tungsten", "electronics"}}--, "plastics"
	--, "laminate-2"
}

xm_intermediate_products_technologies["science-pack"] = {
	{"automation-science-pack", 40, {"crude-science-pack"}, 15, {"automation-science-pack"}, {"electricity"}},
	{"logistic-science-pack", 100, {"automation-science-pack"}, 40, {"logistic-science-pack"}, {"electric-engine", "automation"}}
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
	{"washing1", 40, {"automation-science-pack"}, 30, {"ore-processor-1", "magnesite", "graphite-0", "sodium-carbonate", "kaolin"}, {"sulfur-processing", "circuit0"}},
	--{"washing2", 40, {"automation-science-pack"}, 30, {"ore-processor-2", "surfactant-0"}, {"oil-processing", "fluorine"}},--, "conc-scheelite-1", "conc-millerite-1", "conc-fluorite-1"
}

xm_production_technologies["smelting-machine"] = {
	{"advanced-material-processing", 80, {"automation-science-pack"}, 30, {"xm-furnace-steel", "steel-plate-1", "copper-plate-1"}, {"iron-refining1"}},
	{"advanced-material-processing-2", 360, {"automation-science-pack", "logistic-science-pack"}, 45, {"xm-furnace-electric", "raw-iron-1", "steel-plate-2", "fiber-glass"}, {"nickel", "ceramics1", "optics", "electrolysis1"}}
}

xm_production_technologies["chemical-machine"] = {
	{"sulfur-processing", 40, {"automation-science-pack"}, 20, {"chemical-plant", "sulfur-0", "sulfuric-acid", "rubber-vulcanized-0"}, {"fluid-handling", "machines0"}},
	--{"chemistry2", 40, {"automation-science-pack"}, 30, {"reactor-2", "sulfuric-acid-1"}, {"sulfur-processing", "machines0"}},
	{"oil-processing", 90, {"automation-science-pack", "logistic-science-pack"}, 25, {"pumpjack", "oil-refinery", "basic-oil-processing", "solid-fuel-from-heavy-oil"}, {"sulfur-processing", "advanced-material-processing", "logistic-science-pack"}},
	{"electrolysis1", 90, {"automation-science-pack"}, 20, {"electrolyzer-1", "electrolysis-acid"}, {"sulfur-processing"}}
	--{"electrolysis2", 90, {"automation-science-pack"}, 20, {"electrolyzer-2", "electrolysis-base"}, {"electrolysis1", "chemistry2"}}
}

xm_production_technologies["production-machine"] = {
	{"machines0", 20, {"crude-science-pack"}, 5, {"machine-tool-0", "assembling-machine-0", "rubber-raw"}, nil},
	{"electric-engine", 20, {"automation-science-pack"}, 10, {"lab", "electric-mining-drill"}, {"circuit0", "logistics"}},
	{"automation", 30, {"automation-science-pack"}, 15, {"machine-tool-1", "assembling-machine-1", "long-handed-inserter"}, {"steel-processing", "machines0", "circuit0"}},
	{"automation-2", 250, {"automation-science-pack", "logistic-science-pack"}, 30, {"machine-tool-2", "assembling-machine-2"}, {"advanced-electronics", "motor2", "fast-inserter"}}
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