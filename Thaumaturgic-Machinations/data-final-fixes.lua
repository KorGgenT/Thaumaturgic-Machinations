--commented out because it makes the game take forever to load
TM.debug_log("PREPARE FOR LOG DESTRUCTION (data-final-fixes)")
if combine_seperate_modifier ~= 0 then
	for i,v in pairs(data.raw.recipe) do
		--log(i)
		--log("\n" .. serpent.block(v))
		if not inherited[v.name] and not blacklist[v.name] then TM.Inheritance(inherited, v) end
		if v.name:find('aspect.extraction$') then TM.OrderRecipeResults(v) end
		TM.icons_assign(v.name)
	end
end
inherited = nil -- clears up the inheritance table.
TM.debug_log("LOG DESTRUCTION CONCLUDED. (data-final-fixes)")


--[[ *WIP* not sure if this would make loading faster anyway...
local aspc_list = {} -- this is the list of items that have aspects defined for them. associated with extraction recipe.
local todo_list = {} -- this is the list of items that need to be done. ingredients/recipes are actual items.
if combine_seperate_modifier > 0 then
	TM.debug_log("PREPARE FOR LOG DESTRUCTION MARK II (data-final-fixes)")
	for recipe_name, recipe_obj in pairs(data.raw.recipe) do
		-- finds all extraction recipes that currently exist and puts them into aspc_list
		local ends = recipe_name:find('%-aspect%-extraction$')
		if ends and ends > 1 then
			aspc_list[recipe_name:sub(1, ends - 1)] = {
				["results"] = recipe_obj.results,
				["ingredients"] = recipe_obj.ingredients,
				["ext"] = recipe_name
			}
		-- blacklist is instantiated in data.lua at line 3. it is a list of things that should not be inherited.
		-- matchlist is similar, except it checks the string of the name of the recipe
		-- also checks to see if recipe_obj even has any ingredients. basic items with no ingredients can't inherit, after all.
		elseif not blacklist[recipe_name] and not TM.MatchList(recipe_name) and recipe_obj.ingredients then
			todo_list[recipe_name] = {
				["results"] = recipe_obj.results,
				["ingredients"] = recipe_obj.ingredients
			}
		end
	end
	
	for i in pairs(aspc_list) do
		-- removes items from the todo list that already have extraction recipes defined elsewhere
		todo_list[i] = nil
	end
	
	while next(todo_list) do
		local i, v = next(todo_list)
		if i == nil or v == nil or todo_list[i] == nil or todo_list[i].ingredients == nil then break end -- gotta have data
		-- 
		aspc_list, todo_list = TM.AspectInherit(aspc_list, todo_list, i)
		-- by now, aspc_list should have added essentia as results, unordered, and the ingredients as is.
		-- log(i)
		todo_list[i] = nil -- removes the item from the todo_list 
	end

	
	
	TM.debug_log("LOG DESTRUCTION CONCLUDED. (data-final-fixes)")
end
]]--