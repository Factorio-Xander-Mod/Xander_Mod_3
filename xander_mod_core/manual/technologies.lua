--==========  MATERIAL  ==========

data.raw.technology["concrete-2"].icon = "__base__/graphics/technology/concrete.png"

--==========  INTERMEDIATE PRODUCTS  ==========

--data.raw.technology["advanced-electronics"].icon = "__base__/graphics/technology/electronics.png"
data.raw.technology["advanced-electronics"].localised_description = {"technology-description.advanced-electronics"}
--data.raw.technology["advanced-electronics-2"].icon = "__base__/graphics/technology/advanced-electronics.png"
data.raw.technology["advanced-electronics-2"].localised_description = {"technology-description.advanced-electronics-2"}


--==========  PRODUCTION  ==========

data.raw.technology["mining-productivity-1"].prerequisites = {"washing2"}
data.raw.technology["advanced-material-processing"].icon = "__xander-mod__/graphics/technology/production/smelting-machine/xm-furnace-steel.png"
data.raw.technology["advanced-material-processing-2"].localised_name = {"technology-name.advanced-material-processing-2"}
data.raw.technology["advanced-material-processing-2"].localised_description = {"technology-description.advanced-material-processing-2"}
data.raw.technology["research-speed-1"].prerequisites = {"electronics", "automation-science-pack"}

--==========  LOGISTICS  ==========

data.raw.technology["toolbelt"].unit.count = 150


--==========  COMBAT  ==========

data.raw.technology["military-science-pack"].unit.count = 100