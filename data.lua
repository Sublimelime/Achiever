require("internal")
require("scripted")

--Check if bob's mods are installed
if data.raw["storage-tank"]["bob-valve"] ~= nil then --bob's logistics installed
	require("externalmoddefs.bobsLogistics")
end

if data.raw["item-subgroup"]["bob-assembly-machine"] ~= nil then -- Bob's assembling machines installed
	require("externalmoddefs.bobsAssemblingMachines")
end

if data.raw.item["bob-area-mining-drill-1"] ~= nil then -- Bob's mining installed
	require("externalmoddefs.bobsMining")
end
