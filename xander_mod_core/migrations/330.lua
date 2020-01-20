game.reload_script()

for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["carbon-monoxide"] and technologies["carbon"] then
		recipes["carbon-monoxide"].enabled = technologies["carbon"].researched
	end
end
