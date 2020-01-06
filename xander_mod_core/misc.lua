--Add new recipe categories
local xm_recipe_categories_new = {"empty", "hand", "washing", "kiln", "refining", "refining-electric", "electrolysis", "basic-machine", "machine", "waste"}
for _, category_name in ipairs(xm_recipe_categories_new) do
	data:extend({
		{type = "recipe-category", name = category_name}
	})
end

--Modify player crafting categories
local xm_player_recipes_add = {"hand", "basic-machine", "basic-crafting"}
for _, category in ipairs(xm_player_recipes_add) do
  table.insert(data.raw.character["character"].crafting_categories, category)
end

--Add new fuel categories
local xm_fuel_categories_new = {"crude"}

for _, category_name in ipairs(xm_fuel_categories_new) do
	data:extend({
		{type = "fuel-category", name = category_name}
	})
end