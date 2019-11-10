game.reload_script()

for index, force in pairs(game.forces) do
	local technologies = force.technologies
	local recipes = force.recipes

	if recipes["tin-1"] and technologies["tin-lead1"] then
		recipes["tin-1"].enabled = technologies["tin-lead1"].researched
	end
	if recipes["lead-1"] and technologies["tin-lead1"] then
		recipes["lead-1"].enabled = technologies["tin-lead1"].researched
	end
	if recipes["solder-0"] and technologies["solder"] then
		recipes["solder-0"].enabled = technologies["solder"].researched
	end
	if recipes["parts-steel"] and technologies["parts1"] then
		recipes["parts-steel"].enabled = technologies["parts1"].researched
	end
end
