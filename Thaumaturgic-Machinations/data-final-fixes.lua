--[[
TM.debug_log("PREPARE FOR LOG DESTRUCTION (data-final-fixes)")
if combine_seperate_modifier ~= 0 then
	for i,v in pairs(data.raw.recipe) do
		--log(i)
		--log("\n" .. serpent.block(v))
		if not inherited[v.name] then TM.Inheritance(inherited, v) end
		if v.name:find('aspect.extraction$') then TM.OrderRecipeResults(v) end
		TM.icons_assign(v.name)
	end
end
inherited = nil -- clears up the inheritance table.
TM.debug_log("LOG DESTRUCTION CONCLUDED. (data-final-fixes)")
]]--
local done_list = {}
local todo_list = {}
if combine_seperate_modifier > 0 then
	TM.debug_log("PREPARE FOR LOG DESTRUCTION MARK II (data-final-fixes)")
	for recipe_name, recipe_obj in pairs(data.raw.recipe) do
		local ends = recipe_name:find('%-aspect%-extraction$')
		if ends and ends > 1 then
			non_extraction_recipe_name = recipe_name:sub(1, ends - 1)
			done_list[non_extraction_recipe_name] = {
				["results"] = recipe_obj.results,
				["ingredients"] = recipe_obj.ingredients,
				["ext"] = recipe_name -- name of the extraction recipe associated with this item
			}
			
			if not aspect_list[non_extraction_recipe_name] then
				log("woops! 3948000")
				aspect_list[non_extraction_recipe_name] = {
					["aspect"] = recipe_obj.ingredients[0].name,
					["amount"] = recipe_obj.ingredients[0].name
				}
			end
			
			
		elseif not blacklist[recipe_name] and not TM.MatchList(recipe_name) and recipe_obj.ingredients then
			todo_list[recipe_name] = {
				["results"] = recipe_obj.results,
				["ingredients"] = recipe_obj.ingredients
			}
		end
	end
	
	for i in pairs(done_list) do
		-- removes items from the todo list that already have extraction recipes defined elsewhere
		todo_list[i] = nil
	end
	log("right before the inherit while loop")
	log(serpent.block(todo_list))
	while next(todo_list) do
		local i, v = next(todo_list)
		if i == nil or v == nil then break end
		-- do stuff
		done_list, todo_list = TM.AspectInherit(done_list, todo_list, i)
		-- stuff do
		-- log(i)
		if todo_list then
			todo_list[i] = nil
		end
	end

	TM.debug_log("LOG DESTRUCTION CONCLUDED. (data-final-fixes)")
end

