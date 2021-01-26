--==========  ALL  ==========
--Format: name, unit count, science packs, unit time, recipe unlocks
xm_all_technologies_to_impose = {}




--==========  MATERIAL  ==========
local xm_material_technologies = {}

xm_material_technologies["raw-material"] = {
	{"earthen0", 10, {"crude-science-pack"}, 5, {"sand-0", "clay-1", "saltpeter"}, {"washing0"}},
	{"fuels0", 5, {"crude-science-pack"}, 5, {"coke", "potash"}, nil},
	{"glass0", 10, {"crude-science-pack"}, 5, {"glass-0"}, {"earthen0", "fuels0"}},
	{"recycling", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"recycle-wrought-iron", "recycle-burner-drill", "recycle-burner-ore-processor", "recycle-burner-machine-tool", "recycle-burner-assembling-machine", "recycle-crude-belt", "recycle-crude-underground", "recycle-crude-splitter", "recycle-burner-inserter", "recycle-small-electric-pole"}, {"landfill", "advanced-material-processing"}},
}

xm_material_technologies["ingot"] = {
	{"iron-refining1", 25, {"automation-science-pack"}, 20, {"raw-iron-0", "iron-plate-1"}, {"automation-science-pack"}},
	{"steel-processing", 30, {"crude-science-pack"}, 10, {"steel-plate", "steel-chest"}, {"fuels0"}},
	{"aluminum", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"conc-bauxite", "aluminum-hydroxide", "cryolite", "aluminum", "stock-duralumin", "stock-bronze-2"}, {"advanced-material-processing-2", "chemical-science-pack"}},
	{"chromium", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {"conc-chromite", "raw-chromate-slag", "chromium-oxide", "chromium", "stock-stainless"}, {"aluminum", "washing3"}},
	{"nickel", 80, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-millerite-0", "nickel-0", "stock-cupronickel"}, {"railway", "washing1", "advanced-material-processing", "logistic-science-pack"}},
	{"nickel2", 440, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 45, {"conc-millerite-1", "raw-nickel", "nickel-1"}, {"electrolysis2", "washing3"}},
	{"copper2", 440, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 45, {"conc-chalcocite", "raw-copper", "copper-plate-2"}, {"electrolysis2", "washing3"}},
	--XX{"zinc", 100, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-sphalerite-0", "zinc-0", "stock-cupronickel"}, {"railway", "washing1", "advanced-material-processing", "logistic-science-pack"}},
	{"zirconium", 660, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {"magnesium-chloride", "conc-zircon", "raw-zirconium", "stock-zircalloy"}, {"electrolysis2", "washing3"}},
	{"nobles", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"raw-silver-0", "raw-platinum-0", "raw-gold-0", "silver", "platinum", "gold"}, {"tin-lead1", "chemistry2", "chemical-science-pack"}},
	{"tin-lead1", 50, {"automation-science-pack"}, 15, {"tin-1", "lead-1"}, {"solder", "washing1", "advanced-material-processing"}},
	{"tin-lead2", 500, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 45, {"conc-cassiterite", "conc-galena", "lead-oxide", "tin-2", "lead-2"}, {"tin-lead1", "washing3"}},
	{"tungsten", 120, {"automation-science-pack", "logistic-science-pack"}, 40, {"conc-scheelite-0", "tungsten-oxide", "tungsten", "stock-alloy-0", "small-lamp-1"}, {"advanced-material-processing-2"}},
	{"solder", 10, {"crude-science-pack"}, 5, {"stock-bronze-1", "solder-0", "resin", "wire-solder-0"}, nil},
}

xm_material_technologies["nonmetal"] = {
	{"boron", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-borax", "glass-1"}, {"washing1", "chlorine"}},
	{"silicon", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {"silicon-carbide", "silicon", "graphite-1"}, {"advanced-material-processing-2", "carbon"}},
	{"semiconductors", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"silicon-boule", "wafer-0", "phosphorus"}, {"chemistry2", "automation-2", "chemical-science-pack", "silicon"}},
}

xm_material_technologies["terrain"] = {
	{"concrete", 180, {"automation-science-pack"}, 30, {"cement", "concrete", "hazard-concrete"}, {"washing1", "parts1"}},
	{"concrete-2", 200, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 30, {"refined-concrete", "refined-hazard-concrete"}, {"chemical-science-pack", "concrete", "advanced-material-processing-2"}},
	{"cliff-explosives", 150, {"automation-science-pack", "logistic-science-pack"}, 30, {"cliff-explosives"}, {"military-2"}},
	{"cliff-explosives-2", 300, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"cliff-explosives-1"}, {"explosives", "cliff-explosives", "chemical-science-pack"}},
}

xm_material_technologies["ceramic"] = {
	{"ceramics1", 50, {"automation-science-pack"}, 15, {"brick-clay-1", "brick-magnesia", "porcelain"}, {"washing1", "advanced-material-processing"}},
}

xm_material_technologies["fluid-recipes"] = {
	{"lubricant", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"parts1", "oil-processing"}},
	{"carbon", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"carbon-fwd", "carbon-rvs", "formaldehyde-1"}, {"electrolysis1", "oil-processing"}},
	{"nitrogen", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"distillation-air", "ammonia", "nitric-acid"}, {"electrolysis1", "oil-processing"}},
	{"fluorine", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"conc-fluorite-0", "hydrogen-fluoride"}, {"washing1", "chlorine", "railway"}},
	{"chlorine", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"distillation-water", "electrolysis-brine", "phenol-1"}, {"electrolysis1", "oil-processing"}},
}

xm_material_technologies["polymer"] = {
	{"phenolic", 40, {"automation-science-pack"}, 20, {"phenol-0", "formaldehyde-0", "uncured-phenolic", "copper-cable-1"}, {"sulfur-processing"}},
	{"plastics", 200, {"automation-science-pack", "logistic-science-pack"}, 30, {"pellets-polyethylene", "plastic-bar", "rubber-sbr", "rubber-vulcanized-1"}, {"oil-processing"}},
	{"plastics-2", 500, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 60, {"aromatic", "epichlorohydrin", "epoxide", "amine", "uncured-epoxy", "pellets-nylon", "plastic-bar-2"}, {"advanced-oil-processing"}},
}

xm_material_technologies["energetic"] = {
	{"flammables", 80, {"automation-science-pack", "logistic-science-pack"}, 30, {"diesel-1"}, {"oil-processing"}},
	{"kvaerner-process", 150, {"automation-science-pack", "logistic-science-pack"}, 30, {"solid-fuel-from-heavy-oil", "solid-fuel-from-light-oil", "solid-fuel-from-petroleum-gas"}, {"carbon", "advanced-material-processing-2"}},
	{"explosives", 120, {"automation-science-pack", "logistic-science-pack"}, 30, {"nitrated-organics", "explosives"}, {"nitrogen", "chlorine"}}
}

xm_all_technologies_to_impose["material"] = xm_material_technologies




--==========  FLUIDS  ==========
local xm_fluid_technologies = {}

xm_fluid_technologies["fluid"] = {
	{"uranium-weapons-enrichment", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 45, {"uranium-weapons-enrichment", "uranium-235"}, {"uranium-processing", "production-science-pack"}},
}

xm_fluid_technologies["fluid-hydrocarbon"] = {
	{"advanced-oil-processing", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 75, {"crude-oil-desulf", "advanced-oil-processing", "light-oil-distillation", "petroleum-gas-distillation"}, {"chemistry2", "flammables", "chemical-science-pack", "carbon"}},
	{"natural-gas", 300, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 75, {"natural-gas-desulf", "natural-gas-distillation"}, {"chemistry2", "carbon", "chemical-science-pack"}},
	{"advanced-hydrocarbon-reforming", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {"heavy-oil-cracking", "light-oil-cracking", "reform-btx", "reform-light-aliphatic", "reform-ethylene", "reform-methane", "diesel-2"}, {"advanced-oil-processing", "kvaerner-process", "production-science-pack"}},
	{"coal-liquefaction", 450, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {"coal-liquefaction"}, {"advanced-oil-processing", "production-science-pack"}}
}

xm_all_technologies_to_impose["fluids"] = xm_fluid_technologies




--==========  INTERMEDIATE PRODUCTS  ==========
local xm_intermediate_products_technologies = {}

xm_intermediate_products_technologies["mechanical"] = {
	{"parts1", 30, {"automation-science-pack"}, 15, {"iron-gear-1", "steel-rod", "parts-steel", "piston-unit-1"}, {"automation", "advanced-material-processing"}},
	{"parts2", 150, {"automation-science-pack", "logistic-science-pack"}, 30, {"parts-alloy"}, {"tungsten", "plastics", "lubricant"}},
	{"engine", 100, {"automation-science-pack", "logistic-science-pack"}, 20, {"engine-unit", "pump-1"}, {"sulfur-processing", "logistic-science-pack", "parts1"}}
}

xm_intermediate_products_technologies["electrical"] = {
	{"electricity", 20, {"crude-science-pack"}, 10, {"copper-cable", "coil-1-0", "electric-engine-unit", "steam-engine", "small-electric-pole", "inserter"}, {"glass0"}},
	{"motor2", 60, {"automation-science-pack", "logistic-science-pack"}, 30, {"coil-1-1", "coil-2-0", "motor-1-1", "motor-2-0"}, {"parts1", "plastics"}},
	{"motor3", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"copper-cable-2", "coil-2-1", "coil-3", "motor-3"}, {"parts2", "plastics-2"}},
	{"battery", 180, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"tin-lead1", "electrolysis1", "plastics"}},
}

xm_intermediate_products_technologies["data"] = {
	{"circuit0", 20, {"automation-science-pack"}, 15, {"board-1-0", "components-1-0", "electronic-circuit", "inserter-1"}, {"solder", "automation-science-pack"}},
	{"electronics", 80, {"automation-science-pack"}, 30, {"wire-solder-1", "board-1-1", "components-1-1"}, {"phenolic", "ceramics1", "automation"}},
	{"advanced-electronics", 300, {"automation-science-pack", "logistic-science-pack"}, 45, {"laminate-1", "board-1-2", "board-2-0", "components-2-0", "advanced-circuit"}, {"tungsten", "nitrogen", "electronics"}},
	{"advanced-electronics-2", 660, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 60, {"laminate-2", "board-3-0", "wafer-data-1", "wafer-data-2", "components-2-1", "components-3-0", "processing-unit"}, {"laser", "semiconductors", "plastics-2", "electrolysis2"}},--"wire-gold", 
}

xm_intermediate_products_technologies["intermediate-product"] = {
	{"robotics", 200, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"flying-robot-frame"}, {"battery", "automation-2", "aluminum"}},
	{"low-density-structure", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"low-density-structure"}, {"parts2", "plastics-2", "aluminum"}},
	{"rocket-fuel", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 60, {}, {"electrolysis2", "natural-gas", "refined-flammables-3"}},
}

xm_intermediate_products_technologies["science-pack"] = {
	{"automation-science-pack", 40, {"crude-science-pack"}, 15, {"automation-science-pack"}, {"electricity"}},
	{"logistic-science-pack", 100, {"automation-science-pack"}, 40, {}, {"electric-engine", "automation"}},
	{"chemical-science-pack", 360, {"automation-science-pack", "logistic-science-pack"}, 60, {}, {"engine", "boron", "fluorine"}},
	{"production-science-pack", 500, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 60, {}, {"productivity-module", "railway-2"}},
	{"utility-science-pack", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 60, {}, {"motor3", "robotics", "advanced-electronics-2", "low-density-structure"}},
}

xm_all_technologies_to_impose["intermediate-products"] = xm_intermediate_products_technologies




--==========  PRODUCTION  ==========
local xm_production_technologies = {}

xm_production_technologies["tool"] = {
	{"repair0", 20, {"automation-science-pack"}, 10, {"repair-pack"}, {"steel-processing"}}
}

xm_production_technologies["energy"] = {
	{"optics", 30, {"automation-science-pack"}, 20, {}, {"washing1"}},
	{"electric-gen2", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 60, {"boiler-1", "steam-turbine"}, {"motor2", "advanced-material-processing-2", "chemical-science-pack"}},
	{"solar-energy", 480, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 60, {"wafer-solar", "solar-panel"}, {"semiconductors", "aluminum", "nobles"}},
	{"solar-energy-2", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {"solar-panel-2"}, {"solar-energy", "chromium", "motor3"}},
	{"electric-energy-accumulators", 200, {"automation-science-pack", "logistic-science-pack"}, 45, {}, {"battery", "electric-energy-distribution-1"}},
	{"nuclear-power", 800, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {"nuclear-reactor", "uranium-fuel-pellet", "uranium-fuel-cell", "heat-pipe", "heat-exchanger", "steam-turbine-1"}, {"uranium-processing", "chromium", "zirconium"}},
	{"nuclear-fuel-reprocessing", 500, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {}, {"nuclear-power", "advanced-material-processing-3"}},
	{"kovarex-enrichment-process", 2000, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack", "utility-science-pack"}, 60, {"kovarex-fuel-cell", "kovarex-enrichment-process", "nuclear-fuel"}, {"uranium-weapons-enrichment", "nuclear-fuel-reprocessing", "utility-science-pack"}},
}

xm_production_technologies["extraction-machine"] = {
	{"washing0", 5, {"crude-science-pack"}, 5, {"ore-processor-0", "gravel", "limestone-0"}, nil},
	{"washing1", 40, {"automation-science-pack"}, 20, {"ore-processor-1", "magnesite", "graphite-0", "kaolin"}, {"sulfur-processing", "circuit0"}},
	{"washing2", 180, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"ore-processor-2", "surfactant-0"}, {"chemical-science-pack", "advanced-electronics", "motor2"}},
	{"washing3", 240, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 45, {"electric-mining-drill-2", "surfactant-1", "conc-scheelite-1"}, {"mining-productivity-2", "explosives", "chemistry2", "production-science-pack"}},
	{"waste", 100, {"automation-science-pack", "logistic-science-pack"}, 30, {"waste-dump"}, {"landfill"}},
}

xm_production_technologies["smelting-machine"] = {
	{"advanced-material-processing", 80, {"automation-science-pack"}, 30, {"xm-furnace-steel", "steel-plate-1", "copper-plate-1", "stock-cast-iron-1"}, {"iron-refining1"}},
	{"advanced-material-processing-2", 240, {"automation-science-pack", "logistic-science-pack"}, 45, {"xm-furnace-electric", "raw-iron-1", "steel-plate-2", "fiber-glass"}, {"nickel", "ceramics1", "optics", "electrolysis1"}},
	{"advanced-material-processing-3", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {"xm-furnace-plasma"}, {"chromium", "motor3", "electrolysis2"}},
}

xm_production_technologies["chemical-machine"] = {
	{"sulfur-processing", 40, {"automation-science-pack"}, 20, {"chemical-plant", "sulfur-0", "sulfuric-acid", "rubber-vulcanized-0"}, {"fluid-handling", "machines0"}},
	{"chemistry2", 280, {"automation-science-pack", "logistic-science-pack"}, 30, {"chem-reactor-2", "sulfur-dioxide-direct", "sulfur-dioxide-h2s", "sulfur", "sulfuric-acid-1"}, {"advanced-electronics", "motor2", "chlorine"}},
	{"oil-processing", 90, {"automation-science-pack", "logistic-science-pack"}, 25, {"pumpjack", "oil-refinery", "basic-oil-processing"}, {"sulfur-processing", "advanced-material-processing", "logistic-science-pack"}},
	{"electrolysis1", 90, {"automation-science-pack"}, 20, {"electrolyzer-1", "electrolysis-acid"}, {"sulfur-processing"}},
	{"electrolysis2", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"electrolyzer-2", "electrolysis-base"}, {"nobles"}},
	{"uranium-processing", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"centrifuge", "uranium-natural-hexafluoride", "uranium-processing", "uranium-238"}, {"washing2"}},
}

xm_production_technologies["production-machine"] = {
	{"machines0", 20, {"crude-science-pack"}, 5, {"machine-tool-0", "assembling-machine-0", "rubber-raw"}, nil},
	{"electric-engine", 20, {"automation-science-pack"}, 10, {"lab", "electric-mining-drill"}, {"circuit0", "logistics"}},
	{"automation", 30, {"automation-science-pack"}, 15, {"machine-tool-1", "assembling-machine-1", "long-handed-inserter"}, {"steel-processing", "machines0", "circuit0"}},
	{"automation-2", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {"machine-tool-2", "assembling-machine-2"}, {"advanced-electronics", "motor2", "fast-inserter"}},
	--{"automation-3", {"laser"}}
}

xm_production_technologies["module"] = {
	{"modules", 100, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"toolbelt", "electronics"}},
	{"speed-module", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"modules", "motor2"}},
	{"speed-module-2", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"automation-2", "speed-module", "aluminum"}},
	{"speed-module-3", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {}, {"production-science-pack", "advanced-electronics-2", "speed-module-2", "motor3"}},
	{"productivity-module", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"modules", "logistics-2"}},
	{"productivity-module-2", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"chemical-science-pack", "automation-2", "productivity-module"}},
	{"productivity-module-3", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {}, {"production-science-pack", "advanced-electronics-2", "productivity-module-2", "stack-inserter"}},
	{"effectivity-module", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"modules", "advanced-material-processing-2"}},
	{"effectivity-module-2", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"chemical-science-pack", "automation-2", "effectivity-module", "parts2"}},
	{"effectivity-module-3", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {}, {"production-science-pack", "advanced-electronics-2", "effectivity-module-2"}},
	{"effect-transmission", 500, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {}, {"motor3", "chromium"}},
}

xm_all_technologies_to_impose["production"] = xm_production_technologies




--==========  LOGISTICS  ==========
local xm_logistics_technologies = {}

xm_logistics_technologies["belt"] = {
	{"logistics", 40, {"automation-science-pack"}, 15, {"transport-belt", "underground-belt", "splitter"}, {"automation-science-pack", "steel-processing"}},
	{"logistics-2", 240, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"logistic-science-pack", "concrete"}},
	{"logistics-3", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"expedited-transport-belt", "expedited-underground-belt", "expedited-splitter"}, {"logistics-2", "concrete-2", "aluminum", "advanced-electronics"}},
	{"logistics-4", 600, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "production-science-pack"}, 60, {"express-transport-belt", "express-underground-belt", "express-splitter"}, {"logistics-3", "chromium", "advanced-electronics-2"}},
}

xm_logistics_technologies["inserter"] = {
	{"fast-inserter", 45, {"automation-science-pack", "logistic-science-pack"}, 20, {"fast-inserter", "long-fast-inserter", "filter-inserter"}, {"logistic-science-pack", "electronics", "parts1"}},
	{"stack-inserter", 330, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"aluminum", "parts2", "advanced-electronics"}},
}

xm_logistics_technologies["energy-pipe-distribution"] = {
	{"fluid-handling", 30, {"automation-science-pack"}, 20, {"storage-tank", "pump", "offshore-pump-1", "pipe-1", "empty-barrel"}, {"automation-science-pack", "steel-processing"}},
	{"electric-energy-distribution-1", 90, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"ceramics1", "parts1", "logistic-science-pack"}},
	{"electric-energy-distribution-2", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"big-electric-pole-2", "substation"}, {"electric-energy-distribution-1", "chemical-science-pack", "motor2"}},
}

xm_logistics_technologies["transport"] = {
	{"railway", 80, {"automation-science-pack"}, 30, {}, {"logistics", "parts1"}},
	{"railway-2", 240, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {"rail-1", "locomotive-1"}, {"rail-signals", "braking-force-1", "chemical-science-pack", "automation-2", "parts2"}},
	{"automated-rail-transportation", 120, {"automation-science-pack"}, 30, {}, {"railway", "parts1"}},
	{"rail-signals", 100, {"automation-science-pack", "logistic-science-pack"}, 40, {}, {"automated-rail-transportation", "electronics", "optics"}},
	{"automobilism", 150, {"automation-science-pack", "logistic-science-pack"}, 30, {}, {"engine"}},
}

xm_logistics_technologies["logistic-network"] = {
	{"construction-robotics", 250, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"robotics"}},
	{"logistic-robotics", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"robotics"}},
}
--circuit network

xm_all_technologies_to_impose["logistics"] = xm_logistics_technologies




--==========  COMBAT  ==========
local xm_combat_technologies = {}

xm_combat_technologies["gun"] = {
	{"firearms", 10, {"crude-science-pack"}, 5, {"powder-black-0", "firearm-magazine", "pistol", "light-armor"}},
	{"military", 40, {"automation-science-pack"}, 15, {"submachine-gun", "shotgun", "powder-black-1", "shotgun-shell", "radar"}, {"stone-walls", "turrets", "sulfur-processing", "electric-engine"}},
	{"military-2", 80, {"automation-science-pack", "logistic-science-pack"}, 20, {}, {"military", "advanced-material-processing"}},
	{"military-3", 360, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack"}, 45, {"powder-smokeless", "grenade-1", "poison-capsule", "slowdown-capsule", "combat-shotgun"}, {"military-science-pack", "chemical-science-pack", "explosives", "parts2"}},
	{"military-4", 400, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "utility-science-pack"}, 45, {"piercing-shotgun-shell", "cluster-grenade"}, {"utility-science-pack", "military-3"}},
	{"rocketry", 150, {"automation-science-pack", "logistic-science-pack", "military-science-pack"}, 30, {}, {"flammables", "military-science-pack", "explosives", "plastics"}},
	{"flamethrower", 150, {"automation-science-pack", "logistic-science-pack", "military-science-pack"}, 30, {}, {"flammables", "military-science-pack", "nickel"}},
}

xm_combat_technologies["ammo"] = {
	{"atomic-bomb", 5000, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "production-science-pack", "utility-science-pack"}, 60, {}, {"uranium-weapons-enrichment", "uranium-ammo", "rocket-control-unit", "explosive-rocketry"}},
}

xm_combat_technologies["capsule"] = {
	{"combat-robotics", 200, {"automation-science-pack", "logistic-science-pack", "military-science-pack"}, 30, {}, {"military-science-pack"}},
	{"combat-robotics-2", 350, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "military-science-pack"}, 45, {}, {"combat-robotics", "military-3", "laser", "advanced-electronics"}},
	{"combat-robotics-3", 500, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "military-science-pack", "utility-science-pack"}, 60, {}, {"military-4", "combat-robotics-2", "speed-module"}},
}

xm_combat_technologies["armor"] = {
	{"heavy-armor", 45, {"automation-science-pack"}, 30, {}, {"military"}},
	{"modular-armor", 400, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack"}, 45, {}, {"aluminum", "parts2", "advanced-electronics", "military-science-pack"}},
	{"power-armor", 600, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack"}, 60, {}, {"modular-armor", "motor3", "advanced-electronics-2"}},
	{"power-armor-mk2", 800, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "utility-science-pack"}, 60, {}, {"power-armor", "military-4", "speed-module-2", "effectivity-module-2", "chromium"}},
}

xm_combat_technologies["equipment"] = {
	{"solar-panel-equipment", 200, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 30, {}, {"modular-armor", "solar-energy"}},
	{"fusion-reactor-equipment", 800, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "utility-science-pack"}, 60, {}, {"energy-shield-mk2-equipment", "effectivity-module-2", "zirconium"}},
	{"battery-equipment", 150, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 30, {}, {"solar-panel-equipment", "battery"}},
	{"battery-mk2-equipment", 300, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"battery-equipment", "low-density-structure", "power-armor"}},
	{"belt-immunity-equipment", 100, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 30, {}, {"logistics-3", "solar-panel-equipment"}},
	{"exoskeleton-equipment", 300, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"belt-immunity-equipment", "advanced-electronics-2", "motor3"}},
	{"personal-roboport-equipment", 200, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 45, {}, {"solar-panel-equipment", "construction-robotics"}},
	{"personal-roboport-mk2-equipment", 400, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "utility-science-pack"}, 60, {}, {"personal-roboport-equipment", "utility-science-pack"}},
	{"night-vision-equipment", 100, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack"}, 30, {}, {"solar-panel-equipment"}},
	
	{"energy-shield-equipment", 300, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack"}, 30, {}, {"solar-panel-equipment"}},
	{"energy-shield-mk2-equipment", 600, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "utility-science-pack"}, 45, {}, {"energy-shield-equipment", "power-armor", "advanced-material-processing-3", "utility-science-pack"}},
	{"personal-laser-defense-equipment", 400, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "utility-science-pack"}, 45, {}, {"solar-panel-equipment", "power-armor", "utility-science-pack", "laser-turrets"}},
	{"discharge-defense-equipment", 200, {"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack"}, 45, {}, {"solar-panel-equipment", "power-armor", "laser-turrets"}},
}

xm_combat_technologies["defensive-structure"] = {
	{"stone-walls", 10, {"crude-science-pack"}, 5, {}, nil},
	{"turrets", 15, {"automation-science-pack"}, 10, {}, {"firearms", "automation-science-pack"}},
	{"turrets-2", 200, {"automation-science-pack", "logistic-science-pack", "military-science-pack"}, 30, {"gun-turret-2"}, {"military-science-pack", "parts1", "plastics"}},
	{"laser-turrets", 360, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "military-science-pack"}, 45, {}, {"military-3", "laser", "advanced-electronics"}},
	{"laser-turrets-2", 700, {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "military-science-pack", "utility-science-pack"}, 60, {"laser-turret-2"}, {"military-4", "laser-turrets"}},
}

xm_all_technologies_to_impose["combat"] = xm_combat_technologies