require("internal")
require("scripted")

--Check if bob's mods are installed
if data.raw["storage-tank"]["bob-valve"] ~= nil then --bob's logistics installed
	require("externalmoddefs.bobsLogistics")
end
