game.reload_script()

for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["small-lamp-1"] and technologies["tungsten"] then
		recipes["small-lamp-1"].enabled = technologies["tungsten"].researched
	end
end