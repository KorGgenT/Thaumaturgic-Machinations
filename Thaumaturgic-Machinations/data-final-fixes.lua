log("PREPARE FOR LOG DESTRUCTION")
if combine_seperate_modifier ~= 0 then
	for i,v in pairs(data.raw.recipe) do
		TM.Inheritance(inherited, v.name)
		if v.name:find('aspect.extraction$') then TM.OrderRecipeResults(v) end
		TM.icons_assign(v.name)
	end
end
inherited = nil -- clears up the inheritance table.
log("LOG DESTRUCTION CONCLUDED.")