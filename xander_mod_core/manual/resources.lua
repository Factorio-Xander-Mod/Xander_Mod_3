--Override some base resource parameters

--base "coal"
--find_replace_param(data.raw.resource["coal"], param_name, new_value)

--base "copper-ore"
data.raw.resource["copper-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/copper-ore.png"

data.raw.resource["copper-ore"].stages.sheet.filename = "__xander-mod-graphics-0__/graphics/entity/resource/copper-ore.png"
data.raw.resource["copper-ore"].stages.sheet.hr_version.filename = "__xander-mod-graphics-0__/graphics/entity/resource/copper-ore-hr.png"

for i, _ in ipairs(data.raw["optimized-particle"]["copper-ore-particle"].pictures) do
	data.raw["optimized-particle"]["copper-ore-particle"].pictures[i].filename = "__xander-mod-graphics-0__/graphics/entity/particle/copper-ore/" .. i .. ".png"
	data.raw["optimized-particle"]["copper-ore-particle"].pictures[i].hr_version.filename = "__xander-mod-graphics-0__/graphics/entity/particle/copper-ore/" .. i .. "-hr.png"
end

--base "iron-ore"
data.raw.resource["iron-ore"].icon = "__xander-mod__/graphics/item/material/raw-resource/iron-ore.png"
data.raw.resource["iron-ore"].stages.sheet.filename = "__xander-mod-graphics-0__/graphics/entity/resource/iron-ore.png"
data.raw.resource["iron-ore"].stages.sheet.hr_version.filename = "__xander-mod-graphics-0__/graphics/entity/resource/iron-ore-hr.png"

for i, _ in ipairs(data.raw["optimized-particle"]["iron-ore-particle"].pictures) do
	data.raw["optimized-particle"]["iron-ore-particle"].pictures[i].filename = "__xander-mod-graphics-0__/graphics/entity/particle/iron-ore/" .. i .. ".png"
	data.raw["optimized-particle"]["iron-ore-particle"].pictures[i].hr_version.filename = "__xander-mod-graphics-0__/graphics/entity/particle/iron-ore/" .. i .. "-hr.png"
end

--base "stone"
data.raw.resource["stone"].stages.sheet.filename = "__xander-mod-graphics-0__/graphics/entity/resource/stone.png"
data.raw.resource["stone"].stages.sheet.hr_version.filename = "__xander-mod-graphics-0__/graphics/entity/resource/stone-hr.png"

for i, _ in ipairs(data.raw["optimized-particle"]["stone-particle"].pictures) do
	data.raw["optimized-particle"]["stone-particle"].pictures[i].filename = "__xander-mod-graphics-0__/graphics/entity/particle/stone/" .. i .. ".png"
	data.raw["optimized-particle"]["stone-particle"].pictures[i].hr_version.filename = "__xander-mod-graphics-0__/graphics/entity/particle/stone/" .. i .. "-hr.png"
end

--base "uranium-ore"
find_replace_param(data.raw.resource["uranium-ore"], "required_fluid", "nitric-acid")