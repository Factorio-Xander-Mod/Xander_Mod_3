--==========  MATERIAL  ==========

find_replace_graphics(data.raw.item["copper-ore"],
	{"__base__/graphics/icons/mip/copper-ore.png", "__base__/graphics/icons/mip/copper-ore-1.png", "__base__/graphics/icons/mip/copper-ore-2.png", "__base__/graphics/icons/mip/copper-ore-3.png"},
	{"__xander-mod__/graphics/item/material/raw-resource/copper-ore-0.png", "__xander-mod__/graphics/item/material/raw-resource/copper-ore-1.png", "__xander-mod__/graphics/item/material/raw-resource/copper-ore-2.png", "__xander-mod__/graphics/item/material/raw-resource/copper-ore-3.png"}
)
find_replace_graphics(data.raw.item["iron-ore"],
	{"__base__/graphics/icons/mip/iron-ore.png", "__base__/graphics/icons/mip/iron-ore-1.png", "__base__/graphics/icons/mip/iron-ore-2.png", "__base__/graphics/icons/mip/iron-ore-3.png"},
	{"__xander-mod__/graphics/item/material/raw-resource/iron-ore-0.png", "__xander-mod__/graphics/item/material/raw-resource/iron-ore-1.png", "__xander-mod__/graphics/item/material/raw-resource/iron-ore-2.png", "__xander-mod__/graphics/item/material/raw-resource/iron-ore-3.png"}
)

data.raw.item["steel-plate"].icon = "__xander-mod__/graphics/item/material/stock/steel-plate.png"
data.raw.item["copper-plate"].icon = "__xander-mod__/graphics/item/material/stock/copper-plate.png"

data.raw.item["wood"].fuel_category = "crude"
data.raw.item["coal"].fuel_category = "crude"
data.raw.item["coal"].fuel_value = "4MJ"
data.raw.item["charcoal"].fuel_category = "chemical"
data.raw.item["charcoal"].fuel_value = "2MJ"
data.raw.item["coke"].fuel_category = "chemical"
data.raw.item["coke"].fuel_value = "4MJ"


--==========  INTERMEDIATE PRODUCTS  ==========

data.raw.item["electronic-circuit"].icon = "__xander-mod__/graphics/item/intermediate-products/data/electronic-circuit.png"
data.raw.item["advanced-circuit"].icon = "__xander-mod__/graphics/item/intermediate-products/data/advanced-circuit.png"
data.raw.item["processing-unit"].icon = "__xander-mod__/graphics/item/intermediate-products/data/processing-unit.png"
data.raw.item["electric-engine-unit"].icon = "__xander-mod__/graphics/item/intermediate-products/intermediate-product/electric-engine-unit.png"
data.raw.tool["space-science-pack"].stack_size = 2000


--==========  LOGISTICS  ==========

data.raw.item["crude-transport-belt"].stack_size = 100
data.raw.item["transport-belt"].stack_size = 100
data.raw.item["fast-transport-belt"].stack_size = 100
data.raw.item["express-transport-belt"].stack_size = 100