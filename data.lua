if settings.startup["achiever-vanilla-achievements-support"].value == true then
	require("internal")
	require("scripted")
end

--Check if bob's mods are installed
if settings.startup["achiever-bob-logistics-support"].value == true and data.raw["storage-tank"]["bob-valve"] ~= nil then --bob's logistics installed
	require("externalmoddefs.bobsLogistics")
end

if settings.startup["achiever-bob-assembly-support"].value == true and data.raw["item-subgroup"]["bob-assembly-machine"] ~= nil then -- Bob's assembling machines installed
	require("externalmoddefs.bobsAssemblingMachines")
end

if settings.startup["achiever-bob-mining-support"].value == true and data.raw.item["bob-area-mining-drill-1"] ~= nil then -- Bob's mining installed
	require("externalmoddefs.bobsMining")
end
