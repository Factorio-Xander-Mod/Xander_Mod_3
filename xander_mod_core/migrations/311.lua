game.reload_script()

for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["iron-gear-1"] and technologies["parts1"] then
		recipes["iron-gear-1"].enabled = technologies["parts1"].researched
	end
	if recipes["coil-1-1"] and technologies["motor2"] then
		recipes["coil-1-1"].enabled = technologies["motor2"].researched
	end
	if recipes["coil-2-0"] and technologies["motor2"] then
		recipes["coil-2-0"].enabled = technologies["motor2"].researched
	end
	if recipes["motor-1-1"] and technologies["motor2"] then
		recipes["motor-1-1"].enabled = technologies["motor2"].researched
	end
	if recipes["motor-2-0"] and technologies["motor2"] then
		recipes["motor-2-0"].enabled = technologies["motor2"].researched
	end
	if recipes["nitric-acid"] and technologies["nitrogen"] then
		recipes["nitric-acid"].enabled = technologies["nitrogen"].researched
	end
end