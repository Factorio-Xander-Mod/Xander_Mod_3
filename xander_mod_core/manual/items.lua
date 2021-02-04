--==========  MATERIAL  ==========

data.raw.item["iron-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/iron-ore.png"
find_replace_graphics(data.raw.item["iron-ore"].pictures, {"__base__/graphics/icons/iron-ore.png", "__base__/graphics/icons/iron-ore-1.png", "__base__/graphics/icons/iron-ore-2.png", "__base__/graphics/icons/iron-ore-3.png"}, {"__xander-mod__/graphics/item/material/raw-resource/iron-ore.png", "__xander-mod__/graphics/item/material/raw-resource/iron-ore-1.png", "__xander-mod__/graphics/item/material/raw-resource/iron-ore-2.png", "__xander-mod__/graphics/item/material/raw-resource/iron-ore-3.png"})
data.raw.item["copper-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/copper-ore.png"
find_replace_graphics(data.raw.item["copper-ore"].pictures, {"__base__/graphics/icons/copper-ore.png", "__base__/graphics/icons/copper-ore-1.png", "__base__/graphics/icons/copper-ore-2.png", "__base__/graphics/icons/copper-ore-3.png"}, {"__xander-mod__/graphics/item/material/raw-resource/copper-ore.png", "__xander-mod__/graphics/item/material/raw-resource/copper-ore-1.png", "__xander-mod__/graphics/item/material/raw-resource/copper-ore-2.png", "__xander-mod__/graphics/item/material/raw-resource/copper-ore-3.png"})

data.raw.item["steel-plate"].icon = "__xander-mod__/graphics/item/material/stock/steel-plate.png"
data.raw.item["copper-plate"].icon = "__xander-mod__/graphics/item/material/stock/copper-plate.png"

data.raw.item["wood"].fuel_category = "crude"
data.raw.item["coal"].fuel_category = "crude"
data.raw.item["coal"].fuel_value = "8MJ"
data.raw.item["charcoal"].fuel_category = "chemical"
data.raw.item["charcoal"].fuel_value = "2MJ"
data.raw.item["coke"].fuel_category = "chemical"
data.raw.item["coke"].fuel_value = "4MJ"
data.raw.item["coke"].fuel_acceleration_multiplier = 1.1
data.raw.item["solid-fuel"].icon = "__xander-mod__/graphics/item/material/energetic/solid-fuel.png"
data.raw.item["solid-fuel"].fuel_category = "crude"
data.raw.item["solid-fuel"].fuel_acceleration_multiplier = 1.3
data.raw.item["solid-fuel"].fuel_top_speed_multiplier = 1.2


--==========  INTERMEDIATE PRODUCTS  ==========

data.raw.item["electronic-circuit"].icon = "__xander-mod__/graphics/item/intermediate-products/data/electronic-circuit.png"
data.raw.item["advanced-circuit"].icon = "__xander-mod__/graphics/item/intermediate-products/data/advanced-circuit.png"
data.raw.item["processing-unit"].icon = "__xander-mod__/graphics/item/intermediate-products/data/processing-unit.png"
data.raw.item["electric-engine-unit"].icon = "__xander-mod__/graphics/item/intermediate-products/intermediate-product/electric-engine-unit.png"
data.raw.item["low-density-structure"].stack_size = 20
data.raw.item["rocket-fuel"].stack_size = 20
data.raw.item["rocket-control-unit"].stack_size = 20
data.raw.item["uranium-fuel-cell"].fuel_value = "24GJ"
data.raw.item["kovarex-fuel-cell"].fuel_category = "nuclear"
data.raw.item["kovarex-fuel-cell"].burnt_result = "enriched-kovarex-fuel-cell"
data.raw.item["kovarex-fuel-cell"].fuel_value = "4GJ"
data.raw.tool["space-science-pack"].stack_size = 2000


--==========  PRODUCTION  ==========

data.raw.item["boiler"].icon = "__xander-mod__/graphics/item/production/energy/boiler.png"

data.raw["repair-tool"]["repair-pack"].speed = 1
data.raw["repair-tool"]["repair-pack"].durability = 100

data.raw.item["chemical-plant"].icon = "__xander-mod__/graphics/item/production/chemical-machine/chemical-plant.png"


--==========  LOGISTICS  ==========

data.raw.item["crude-transport-belt"].stack_size = 100
data.raw.item["transport-belt"].stack_size = 100
data.raw.item["fast-transport-belt"].stack_size = 100
data.raw.item["express-transport-belt"].stack_size = 100

data.raw.item["locomotive-1"].icon = data.raw["item-with-entity-data"]["locomotive"].icon
data.raw["item-with-entity-data"]["locomotive"].icon = "__xander-mod__/graphics/item/logistics/transport/locomotive-1.png"


--==========  COMBAT  ==========

data.raw.capsule["raw-fish"].subgroup = "capsule"
local temp_first_aid = table.deepcopy(data.raw.capsule["raw-fish"])
temp_first_aid.name = "first-aid"
temp_first_aid.icon = "__xander-mod__/graphics/item/combat/capsule/first-aid.png"
find_replace_param(temp_first_aid, "amount", -200)
data:extend({temp_first_aid})