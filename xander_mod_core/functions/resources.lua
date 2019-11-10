--Import resource autoplace parameter generation function from base game core material in __core__/raw-resource
local resource_autoplace = require("resource-autoplace");

--Imposes an autoplace control: adds if missing, corrects the order if present
function xm_resource_autoplace_impose(resource_name, n)
	local n_str = "" .. n
	if n < 10 then n_str = "0" .. n end

	if data.raw["autoplace-control"][resource_name] then
		data.raw["autoplace-control"][resource_name].order = n_str
	else
		data:extend({
		{
			type = "autoplace-control",
			name = resource_name,
			richness = true,
			order = n_str,
			category = "resource"
		}
		})
	end
end

--Adds a resource-particle entity, created when hand mining
function xm_resource_particle_add(resource_name)
	local temp = table.deepcopy(data.raw.particle[xm_resource_parents[i] or "copper-ore-particle"])
	temp.name = resource_name .. "-particle"
	for i, _ in ipairs(temp.pictures) do
		temp.pictures[i].filename = "__xander-mod-graphics-0__/graphics/entity/particle/" .. resource_name .. "/" .. i .. ".png"
		temp.pictures[i].hr_version.filename = "__xander-mod-graphics-0__/graphics/entity/particle/" .. resource_name .. "/" .. i .. "-hr.png"
	end
	data:extend({temp})
end

--Adds a noise-layer
function xm_noise_layer_add(resource_name)
	data:extend({{type = "noise-layer", name = resource_name}})
end


--Adds a resource, using XM parameters from __xander-mod__/lists/resources.lua
function xm_resource_add(resource_name, n)
	local temp = table.deepcopy(data.raw.resource[xm_resource_parents[n] ])
	local n_str = "" .. n
	if n < 10 then n_str = "0" .. n end
	--
	temp.name = resource_name
	temp.icon = "__xander-mod__/graphics/item/material/raw-resource/" .. xm_resource_names[n] .. ".png"
	temp.category = xm_resource_categories[n]
	temp.order = n_str
	--Minable parameters
	temp.minable.mining_time = xm_resource_times[n]
	temp.minable.required_fluid = nil
	temp.minable.fluid_amount = nil
	if string.find(xm_resource_categories[n], "solid") then
		temp.minable.mining_particle = resource_name .. "-particle"
	end
	if string.find(xm_resource_categories[n], "fluid") then 
		temp.minable.results[1].name = resource_name
	else
		temp.minable.result = resource_name
	end
	
	--Autoplace parameters
	
	temp.autoplace = resource_autoplace.resource_autoplace_settings({
		name = resource_name,
		order = n_str,
		base_density = 8,
		base_spots_per_km2 = 2,
		has_starting_area_placement = xm_resource_starts[n],
		random_spot_size_minimum = 0.25,
		random_spot_size_maximum = 2,
		regular_rq_factor_multiplier = 1
	})
	if string.find(xm_resource_categories[n], "fluid") then 
		temp.autoplace = resource_autoplace.resource_autoplace_settings({
			name = resource_name,
			order = n_str,
			base_density = 8.2,
			base_spots_per_km2 = 1.8,
			random_probability = 1/48,
			has_starting_area_placement = xm_resource_starts[n],
			random_spot_size_minimum = 1,
			random_spot_size_maximum = 1,
			additional_richness = 220000,
			regular_rq_factor_multiplier = 1
		})
	end
	
	--Graphics - depletion stages, map color
	temp.stages.sheet.filename = "__xander-mod-graphics-0__/graphics/entity/resource/" .. resource_name .. ".png"
	if string.find(xm_resource_categories[n], "solid") then 
		temp.stage_counts = {20000, 10000, 5000, 2000, 1000, 500, 200, 100}
		temp.stages.sheet.hr_version.filename = "__xander-mod-graphics-0__/graphics/entity/resource/" .. resource_name .. "-hr.png"
	end
	temp.stages_effect = nil
	temp.effect_animation_period = nil
	temp.effect_animation_period_deviation = nil
	temp.effect_darkness_multiplier = nil
	temp.min_effect_alpha = nil
	temp.max_effect_alpha = nil
	temp.map_color = xm_resource_map_colors[n]
	
	data:extend({temp})
end


--Corrects basic parameters of an existing resource to fit XM organization structure
function xm_resource_override(resource_name, n)
	local n_str = "" .. n
	if n < 10 then n_str = "0" .. n end
	data.raw.resource[resource_name].category = xm_resource_categories[n]
	data.raw.resource[resource_name].order = n_str
	if string.find(xm_resource_categories[n], "solid") then
		data.raw.resource[resource_name].stage_counts = {20000, 10000, 5000, 2000, 1000, 500, 200, 100}
	end
	data.raw.resource[resource_name].map_color = xm_resource_map_colors[n]
end