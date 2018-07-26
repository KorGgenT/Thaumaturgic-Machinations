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