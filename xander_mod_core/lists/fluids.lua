--==========  ALL  ==========
--Format: name, base color, flow color
xm_all_fluids_to_impose = {}




--==========  MATERIAL  ==========
--All fluids are in the group "fluids"

xm_all_fluids_to_impose["fluid-element"] = {
	{"hydrogen", {r = 7/8, g = 7/8, b = 7/8}, {r = 1, g = 1, b = 1}},
	{"nitrogen", {r = 0, g = 0, b = 1}, {r = 1, g = 1, b = 1}},
	{"oxygen", {r = 1, g = 0, b = 0}, {r = 1, g = 1, b = 1}},
	{"chlorine", {r = 0, g = 1, b = 0}, {r = 1, g = 1, b = 1}},
}

xm_all_fluids_to_impose["fluid-hydrogenated"] = {
	{"ammonia", {r = 3/4, g = 3/4, b = 1}, {r = 3/8, g = 1/2, b = 1}},
	{"hydrogen-fluoride", {r = 7/8, g = 1, b = 0}, {r = 5/8, g = 3/4, b = 1/4}},
	{"hydrogen-sulfide", {r = 1, g = 1, b = 0}, {r = 3/4, g = 3/4, b = 0}},
	--XX{"hydrogen-chloride", {r = 1/2, g = 1, b = 0}, {r = 0, g = 1/2, b = 0}},
}

xm_all_fluids_to_impose["fluid-oxide"] = {
	{"carbon-monoxide", {r = 1/2, g = 0, b = 1/4}, {r = 3/8, g = 3/8, b = 3/8}},
	--XX{"carbon-dioxide", {r = 1/2, g = 0, b = 1/2}, {r = 3/4, g = 3/4, b = 3/4}},
	{"sulfur-dioxide", {r = 5/8, g = 5/8, b = 0}, {r = 1/2, g = 1/2, b = 3/8}},
}

xm_all_fluids_to_impose["fluid"] = {
	{"water", {r = 0, g = 1/4, b = 1/2}, {r = 5/8, g = 5/8, b = 5/8}},
	{"water-brine", {r = 0, g = 1/2, b = 5/8}, {r = 3/4, g = 3/4, b = 3/4}},
	{"water-distilled", {r = 3/8, g = 5/8, b = 7/8}, {r = 7/8, g = 7/8, b = 7/8}},
	{"steam", {r = 1/2, g = 5/8, b = 5/8}, {r = 1, g = 1, b = 1}},
	{"sulfuric-acid", {r = 7/8, g = 1/2, b = 0}, {r = 1, g = 1, b = 0}},
	{"nitric-acid", {r = 7/8, g = 1/8, b = 0}, {r = 1, g = 5/8, b = 0}},
}

xm_all_fluids_to_impose["fluid-hydrocarbon"] = {
	{"crude-oil", {r = 0, g = 1/8, b = 0}, {r = 1/2, g = 1/2, b = 1/4}},
	{"natural-gas", {r = 1, g = 7/8, b = 1/2}, {r = 3/4, g = 7/8, b = 1}},
	{"crude-oil-desulf", {r = 0, g = 0, b = 0}, {r = 1/2, g = 1/2, b = 1/2}},
	{"natural-gas-desulf", {r = 1, g = 1, b = 5/8}, {r = 1/2, g = 1, b = 1}},
	{"petroleum-gas", {r = 3/8, g = 1/8, b = 3/8}, {r = 7/8, g = 7/8, b = 7/8}},
	{"methane", {r = 1, g = 0, b = 1/2}, {r = 0, g = 1, b = 1}},
	{"ethylene", {r = 3/4, g = 3/4, b = 3/4}, {r = 1, g = 3/4, b = 1}},
	{"light-oil", {r = 5/8, g = 3/8, b = 0}, {r = 1, g = 3/4, b = 1/8}},
	{"light-aliphatic", {r = 1, g = 3/4, b = 3/8}, {r = 1, g = 1, b = 1}},
	{"btx", {r = 1/4, g = 1/4, b = 1/4}, {r = 0, g = 0, b = 0}},
	{"heavy-oil", {r = 1/2, g = 0, b = 0}, {r = 7/8, g = 5/8, b = 1/4}},
	{"lubricant", {r = 1/8, g = 3/8, b = 0}, {r = 1/4, g = 3/4, b = 3/8}},
}

xm_all_fluids_to_impose["fluid-organic"] = {
	{"formaldehyde", {r = 1, g = 1/2, b = 1/2}, {r = 1, g = 0, b = 1/2}},
	{"epichlorohydrin", {r = 1/4, g = 3/8, b = 1/4}, {r = 3/8, g = 3/8, b = 3/8}},
	{"amine", {r = 1/4, g = 3/4, b = 3/4}, {r = 3/8, g = 3/8, b = 5/8}},
	{"epoxide", {r = 1/2, g = 0, b = 1/4}, {r = 1, g = 0, b = 0}},
	{"uncured-phenolic", {r = 1, g = 3/4, b = 0}, {r = 1/2, g = 1/8, b = 0}},
	{"uncured-epoxy", {r = 7/8, g = 3/4, b = 3/8}, {r = 1, g = 7/8, b = 5/8}},
}