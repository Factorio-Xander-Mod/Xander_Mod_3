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
	if recipes["fiber-glass"] and technologies["advanced-material-processing-2"] then
		recipes["fiber-glass"].enabled = technologies["advanced-material-processing-2"].researched
	end
	if recipes["glass-1"] and technologies["boron"] then
		recipes["glass-1"].enabled = technologies["boron"].researched
	end
	if recipes["diesel"] and technologies["flammables"] then
		recipes["diesel"].enabled = technologies["flammables"].researched
	end
	if recipes["solid-fuel-from-heavy-oil"] and technologies["kvaerner-process"] then
		recipes["solid-fuel-from-heavy-oil"].enabled = technologies["kvaerner-process"].researched
	end
	if recipes["solid-fuel-from-light-oil"] and technologies["kvaerner-process"] then
		recipes["solid-fuel-from-light-oil"].enabled = technologies["kvaerner-process"].researched
	end
	if recipes["solid-fuel-from-petroleum-gas"] and technologies["kvaerner-process"] then
		recipes["solid-fuel-from-petroleum-gas"].enabled = technologies["kvaerner-process"].researched
	end
	if recipes["nitrated-organics"] and technologies["explosives"] then
		recipes["nitrated-organics"].enabled = technologies["explosives"].researched
	end
	if recipes["nitric-acid"] and technologies["nitrogen"] then
		recipes["nitric-acid"].enabled = technologies["nitrogen"].researched
	end
	if recipes["nitrated-organics"] and technologies["explosives"] then
		recipes["nitrated-organics"].enabled = technologies["explosives"].researched
	end
	if recipes["laminate-1"] and technologies["advanced-electronics"] then
		recipes["laminate-1"].enabled = technologies["advanced-electronics"].researched
	end
	if recipes["board-1-2"] and technologies["advanced-electronics"] then
		recipes["board-1-2"].enabled = technologies["advanced-electronics"].researched
	end
end