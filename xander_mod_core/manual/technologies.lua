--==========  MATERIAL  ==========

data.raw.technology["concrete-2"].icon = "__base__/graphics/technology/concrete.png"


--==========  INTERMEDIATE PRODUCTS  ==========

data.raw.technology["advanced-electronics"].localised_description = {"technology-description.advanced-electronics"}
data.raw.technology["advanced-electronics-2"].localised_description = {"technology-description.advanced-electronics-2"}


--==========  PRODUCTION  ==========

data.raw.technology["mining-productivity-1"].prerequisites = {"washing1", "logistic-science-pack"}
data.raw.technology["mining-productivity-2"].prerequisites = {"washing2", "mining-productivity-1", "chemical-science-pack"}
data.raw.technology["advanced-material-processing"].icon = "__xander-mod__/graphics/technology/production/smelting-machine/xm-furnace-steel.png"
data.raw.technology["advanced-material-processing-2"].localised_name = {"technology-name.advanced-material-processing-2"}
data.raw.technology["advanced-material-processing-2"].localised_description = {"technology-description.advanced-material-processing-2"}
data.raw.technology["advanced-material-processing-3"].localised_name = {"technology-name.advanced-material-processing-3"}
data.raw.technology["advanced-material-processing-3"].localised_description = {"technology-description.advanced-material-processing-3"}
data.raw.technology["research-speed-1"].prerequisites = {"electronics", "electric-engine"}

--==========  LOGISTICS  ==========

data.raw.technology["toolbelt"].unit.count = 150
data.raw.technology["landfill"].prerequisites = {"washing1", "logistic-science-pack"}
data.raw.technology["circuit-network"].unit.count = 150
data.raw.technology["circuit-network"].unit.time = 30
data.raw.technology["circuit-network"].prerequisites = {"electronics", "electric-energy-distribution-1"}
table.insert(data.raw.technology["stack-inserter"].effects, data.raw.technology["inserter-capacity-bonus-2"].effects[1])
table.remove(data.raw.technology["inserter-capacity-bonus-2"].effects, 1)


--==========  COMBAT  ==========

data.raw.technology["military-science-pack"].unit.count = 100
data.raw.technology["land-mine"].unit.count = 240