require("internal")
require("scripted")

--Check if bob's mods are installed
if data.raw["underground-belt"]["green-underground-belt"] ~= nil then --bob's logistics installed
	require("externalmoddefs.bobsLogistics")
end
