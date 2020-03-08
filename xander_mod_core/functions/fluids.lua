--Impose a fluid for XM to data.raw based on an ordering position and colors.
--Impose means: change parameters if a prototype with the given name exists, otherwise create it new
function xm_simple_fluid_impose(subgroup_no, fluid_no, fluid_name, color_base, color_flow)
	local subgroup_str = "" .. subgroup_no
	if subgroup_no < 10 then subgroup_str = "0" .. subgroup_no end
	local fluid_str = "" .. fluid_no
	if fluid_no < 10 then fluid_str = "0" .. fluid_no end
	--
	if data.raw.fluid[fluid_name] then
		data.raw.fluid[fluid_name].base_color = color_base
		data.raw.fluid[fluid_name].flow_color = color_flow
		data.raw.fluid[fluid_name].subgroup = xm_subgroups_to_impose[4][subgroup_no]
		data.raw.fluid[fluid_name].order = subgroup_str .. "-" .. fluid_str
	else
		data:extend({
		{
			type = "fluid",
			name = fluid_name,
			default_temperature = 25,
			heat_capacity = "0.1KJ",
			base_color = color_base,
			flow_color = color_flow,
			max_temperature = 100,
			icon = "__xander-mod__/graphics/fluid/" .. xm_subgroups_to_impose[4][subgroup_no] .. "/" .. fluid_name .. ".png",
			icon_size = 64,
			icon_mipmaps = 4,
			pressure_to_speed_ratio = 0.4,
			flow_to_energy_ratio = 0.59,
			subgroup = xm_subgroups_to_impose[4][subgroup_no],
			order = subgroup_str .. "-" .. fluid_str
		}
		})
	end
end