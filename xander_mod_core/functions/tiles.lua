--Function to set sheet pictures of an existing tile prototype to the correct XM images
function fill_tile_variants(tile_name, parent)
	local shapes_list = {{"inner_corner", "inner-corner"}, {"outer_corner", "outer-corner"}, {"side", "side"}, {"u_transition", "u-transition"}, {"o_transition", "o-transition"}}
	if parent == "dirt-6" then
		for i, _ in ipairs(data.raw.tile[tile_name].variants.main) do
			data.raw.tile[tile_name].variants.main[i].picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet.png"
			data.raw.tile[tile_name].variants.main[i].hr_version.picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet-hr.png"
		end
	elseif parent == "stone-path" then
		data.raw.tile[tile_name].variants.main[1].picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet-1.png"
		data.raw.tile[tile_name].variants.main[1].hr_version.picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet-1-hr.png"
		data.raw.tile[tile_name].variants.main[2].picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet-2.png"
		data.raw.tile[tile_name].variants.main[2].hr_version.picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet-2-hr.png"
		data.raw.tile[tile_name].variants.main[3].picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet-4.png"
		data.raw.tile[tile_name].variants.main[3].hr_version.picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet-4-hr.png"
		
		--
		for _, entry in ipairs(shapes_list) do
			data.raw.tile[tile_name].variants[entry[1]].picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/" .. entry[2] .. ".png"
			data.raw.tile[tile_name].variants[entry[1]].hr_version.picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/" .. entry[2] .. "-hr.png"
		end
	elseif parent == "refined-concrete" then
		for _, entry in ipairs(shapes_list) do
			data.raw.tile[tile_name].variants[entry[1]].picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/" .. entry[2] .. ".png"
			data.raw.tile[tile_name].variants[entry[1]].hr_version.picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/" .. entry[2] .. "-hr.png"
		end
		
		--
		data.raw.tile[tile_name].variants.material_background.picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet.png"
		data.raw.tile[tile_name].variants.material_background.hr_version.picture = "__xander-mod-graphics-0__/graphics/tile/" .. tile_name .. "/sheet-hr.png"	
	end
end