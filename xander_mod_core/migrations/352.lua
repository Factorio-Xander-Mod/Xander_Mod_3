game.reload_script()

for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["pellets-polyethylene"] and technologies["plastics"] then
		recipes["pellets-polyethylene"].enabled = technologies["plastics"].researched
	end
end