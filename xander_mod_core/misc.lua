--Add new recipe categories
local xm_crafting_categories_new = {"empty", "hand", "washing-0", "washing-1", "washing-2", "smelting-0", "smelting-2", "smelting-3", "chemistry-2", "chemistry-3", "electrolysis-1", "electrolysis-2", "machine-0", "machine-1", "waste"}
for _, category_name in ipairs(xm_crafting_categories_new) do
	data:extend({
		{type = "recipe-category", name = category_name}
	})
end

--Modify player crafting categories
local xm_player_categories_add = {"hand", "machine-0", "basic-crafting"}
for _, category in ipairs(xm_player_categories_add) do
  table.insert(data.raw.character["character"].crafting_categories, category)
end

--Add new fuel categories
local xm_fuel_categories_new = {"crude"}

for _, category_name in ipairs(xm_fuel_categories_new) do
	data:extend({
		{type = "fuel-category", name = category_name}
	})
end