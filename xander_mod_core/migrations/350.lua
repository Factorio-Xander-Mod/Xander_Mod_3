game.reload_script()

for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["stock-cast-iron-1"] and technologies["advanced-material-processing"] then
		recipes["stock-cast-iron-1"].enabled = technologies["advanced-material-processing"].researched
	end
end