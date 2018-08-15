if mods["omnimatter"] then
	require("compatibility.omnimatter.recipes")
end
if mods["omnimatter_wood"] then
	require("compatibility.omniwood.recipes")
end
if mods["bobelectronics"] then
	require("compatibility.bobelectronics.recipes")
end
if mods["bobores"] or mods["bobplatess"] then
	require("compatibility.bobores.recipes")
end
if mods["bobplates"] then
	require("compatibility.bobplates.recipes")
end
if mods["angelsrefining"] then
	require("compatibility.angelsrefining.recipes")
end
--[[
if mods["CW-hydrogen-power"] then
	TM.item_add_aspect("CW-pulse-laser", "Aversio", 200);
	blacklist["CW-pulse-laser"] = true;
	data.raw.recipe["CW-pulse-laser-aspect-extraction"].icons = {icon = "__Thaumaturgic-Machinations__/graphics/icons/blank.png"}
end ]]--