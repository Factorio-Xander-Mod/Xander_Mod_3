--Top-level item groups
xm_groups_to_impose = {"environment", "enemies", "material", "fluids", "intermediate-products", "production", "logistics", "combat", "signals", "other"}

--Item subgroups per item group
local xm_material_subgroups = {"raw-material", "raw-resource", "milled-resource", "concentrate", "oxide", "ingot", "stock", "nonmetal", "terrain", "ceramic", "salt", "fluid-recipes", "organic", "polymer", "energetic", "solid-waste"}
local xm_fluid_subgroups = {"fluid-element", "fluid-hydrogenated", "fluid-oxide", "fluid-halogenated", "fluid", "fluid-hydrocarbon", "fluid-organic", "fill-barrel", "empty-barrel", "fluid-waste"}
local xm_intermediate_products_subgroups = {"mechanical", "electrical", "data", "optical", "intermediate-product", "science-pack", "combat-part"}
local xm_production_subgroups = {"tool", "energy", "extraction-machine", "smelting-machine", "chemical-machine", "production-machine", "module"}
local xm_logistics_subgroups = {"storage", "belt", "inserter", "energy-pipe-distribution", "transport", "logistic-network", "circuit-network"}--, "plumbing"
local xm_combat_subgroups = {"gun", "ammo", "capsule", "armor", "equipment", "defensive-structure"}

xm_subgroups_to_impose = {{}, {}, xm_material_subgroups, xm_fluid_subgroups, xm_intermediate_products_subgroups, xm_production_subgroups, xm_logistics_subgroups, xm_combat_subgroups, {}, {}}