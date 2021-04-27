--==========  MATERIAL  ==========


--==========  FLUIDS  ==========


--==========  INTERMEDIATE PRODUCTS  ==========

data.raw.technology["advanced-electronics"].localised_description = {"technology-description.advanced-electronics"}
data.raw.technology["advanced-electronics-2"].localised_description = {"technology-description.advanced-electronics-2"}
data.raw.technology["laser"].unit.count = 300


--==========  PRODUCTION  ==========

data.raw.technology["electric-energy-accumulators-2"].localised_name = {"technology-name.electric-energy-accumulators-2"}
data.raw.technology["electric-energy-accumulators-2"].localised_description = {"technology-description.electric-energy-accumulators-2"}
data.raw.technology["mining-productivity-1"].prerequisites = {"washing1", "logistic-science-pack"}
data.raw.technology["mining-productivity-2"].prerequisites = {"washing2", "mining-productivity-1", "chemical-science-pack"}
data.raw.technology["advanced-material-processing"].icon = "__xander-mod__/graphics/technology/production/smelting-machine/advanced-material-processing.png"
data.raw.technology["advanced-material-processing-2"].localised_name = {"technology-name.advanced-material-processing-2"}
data.raw.technology["advanced-material-processing-2"].localised_description = {"technology-description.advanced-material-processing-2"}
data.raw.technology["advanced-material-processing-3"].localised_name = {"technology-name.advanced-material-processing-3"}
data.raw.technology["advanced-material-processing-3"].localised_description = {"technology-description.advanced-material-processing-3"}
data.raw.technology["research-speed-1"].prerequisites = {"electronics", "electric-engine"}


--==========  LOGISTICS  ==========

data.raw.technology["toolbelt"].unit.count = 150
data.raw.technology["logistics-3"].icon = "__xander-mod__/graphics/technology/logistics/belt/logistics-3.png"
data.raw.technology["landfill"].prerequisites = {"washing1", "logistic-science-pack"}
data.raw.technology["circuit-network"].unit.count = 150
data.raw.technology["circuit-network"].unit.time = 30
data.raw.technology["circuit-network"].prerequisites = {"electronics", "electric-energy-distribution-1"}


--==========  COMBAT  ==========

data.raw.technology["military-science-pack"].unit.count = 100
data.raw.technology["land-mine"].unit.count = 240
data.raw.technology["explosive-rocketry"].unit.count = 250
data.raw.technology["tank"].unit.count = 400

table.insert(data.raw.technology["physical-projectile-damage-1"].effects, {type = "turret-attack", turret_id = "gun-turret-2", modifier = 0.1})
table.insert(data.raw.technology["physical-projectile-damage-2"].effects, {type = "turret-attack", turret_id = "gun-turret-2", modifier = 0.1})
table.insert(data.raw.technology["physical-projectile-damage-3"].effects, {type = "turret-attack", turret_id = "gun-turret-2", modifier = 0.2})
table.insert(data.raw.technology["physical-projectile-damage-4"].effects, {type = "turret-attack", turret_id = "gun-turret-2", modifier = 0.2})
table.insert(data.raw.technology["physical-projectile-damage-5"].effects, {type = "turret-attack", turret_id = "gun-turret-2", modifier = 0.2})
table.insert(data.raw.technology["physical-projectile-damage-6"].effects, {type = "turret-attack", turret_id = "gun-turret-2", modifier = 0.4})
table.insert(data.raw.technology["physical-projectile-damage-7"].effects, {type = "turret-attack", turret_id = "gun-turret-2", modifier = 0.7})