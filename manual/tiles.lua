--==========  GRAVEL  ==========


--==========  BRICK  ==========


--==========  REFINED CONCRETE  ==========
data.raw.tile["refined-concrete"].decorative_removal_probability = 0.5
data.raw.tile["refined-hazard-concrete-right"].decorative_removal_probability = 0.5
data.raw.tile["refined-hazard-concrete-left"].decorative_removal_probability = 0.5

--==========  PORCELAIN  ==========
data:extend({
	{
		type = "tile",
		name = "porcelain",
		needs_correction = false,
		minable = {mining_time = 0.1, result = "porcelain"},
		mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
		collision_mask = {"ground-tile"},
		walking_speed_modifier = 1.5,
		layer = 67,
		decorative_removal_probability = 1,
		map_color = {r = 230, b = 230, g = 230},
		pollution_absorption_per_second = 0,
		vehicle_friction_modifier = concrete_vehicle_speed_modifier,
		variants =
		{
			main = {
				{picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/sheet.png", count = 16, size = 1},
				{picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/sheet.png", count = 8, size = 2},
				{picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/sheet.png", count = 4, size = 4}
			},
			side = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/side.png", count = 1},
			side_mask = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/side-mask.png", count = 1},
			inner_corner = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/inner-corner.png", count = 1},
			inner_corner_mask = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/inner-corner-mask.png", count = 1},
			outer_corner = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/outer-corner.png", count = 1},
			outer_corner_mask = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/outer-corner-mask.png", count = 1},
			u_transition = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/u.png", count = 1},
			u_transition_mask = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/u-mask.png", count = 1},
			o_transition = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/o.png", count = 1},
			o_transition_mask = {picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/o-mask.png", count = 1}
		},
		
		--transitions = {},
		--transitions_between_transitions = {},
		
		walking_sound =
		{
			{filename = "__base__/sound/walking/concrete-01.ogg", volume = 1.0},
			{filename = "__base__/sound/walking/concrete-02.ogg", volume = 1.0},
			{filename = "__base__/sound/walking/concrete-03.ogg", volume = 1.0},
			{filename = "__base__/sound/walking/concrete-04.ogg", volume = 1.0}
		}
	}
})

--[[
data.raw.tile["porcelain"].variants.main = {
	{
		picture = "__xander-mod-graphics-0__/graphics/tile/porcelain/sheet.png",
		count = 1,
		size = 1
	}
}
data.raw.tile["porcelain"].variants.side.count = 1
data.raw.tile["porcelain"].variants.side.hr_version.count = 1
data.raw.tile["porcelain"].variants.side_mask.count = 1
data.raw.tile["porcelain"].variants.side_mask.hr_version.count = 1
data.raw.tile["porcelain"].variants.material_background = nil
]]--