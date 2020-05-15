local function on_init()
	if remote.interfaces["freeplay"] then
		local starting = remote.call("freeplay", "get_created_items")
		starting["burner-mining-drill"] = nil
		starting["stone-furnace"] = nil
		starting["wood"] = 12
		starting["stock-bronze"] = 8
		starting["mechanical-steam-engine"] = 2
		starting["xm-furnace-stone"] = 1
		remote.call("freeplay", "set_created_items", starting)
	end
end

script.on_init(on_init)