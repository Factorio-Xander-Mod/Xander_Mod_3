game.reload_script()

for index, force in pairs(game.forces) do
	force.reset_technology_effects()
	
	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["wire-gold"] and technologies["advanced-electronics-2"] then
		recipes["wire-gold"].enabled = technologies["advanced-electronics-2"].researched
	end
end