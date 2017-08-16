TM.debug_log("PREPARE FOR LOG DESTRUCTION (data-final-fixes)")
if combine_seperate_modifier ~= 0 then
	for i,v in pairs(data.raw.recipe) do
		--log(i)
		--log("\n" .. serpent.block(v))
		TM.Inheritance(inherited, v)
		if v.name:find('aspect.extraction$') then TM.OrderRecipeResults(v) end
		TM.icons_assign(v.name)
	end
end
inherited = nil -- clears up the inheritance table.
TM.debug_log("LOG DESTRUCTION CONCLUDED. (data-final-fixes)")