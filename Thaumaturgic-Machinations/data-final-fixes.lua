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
local aspc_list = {}
local todo_list = {}
if combine_seperate_modifier > 0 then
	TM.debug_log("PREPARE FOR LOG DESTRUCTION MARK II (data-final-fixes)")
	for recipe_name, recipe_obj in pairs(data.raw.recipe) do
		local ends = recipe_name:find('%-aspect%-extraction$')
		if ends > 1 then
			aspc_list[recipe_name:sub(1, ends - 1)] = {
				["results"] = recipe_obj.results,
				["ingredients"] = recipe_obj.ingredients,
				["ext"] = recipe_name
			}
		elseif not blacklist[recipe_name] and not TM.MatchList(recipe_name) then
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
		-- do stuff
		aspc_list, todo_list = TM.AspectInherit(aspc_list, todo_list)
		-- stuff do
		-- log(i)
		todo_list[i] = nil
	end

	TM.debug_log("LOG DESTRUCTION CONCLUDED. (data-final-fixes)")
end

function TM.AspectInherit(aspc_list, todo_list)
	local ingr_list = {}
	local extr_list = {}
	for i2, v2 in pairs(todo_list.ingredients) do
		local amt = v2.amount or v2[2]
		local nme = v2.name or v2[1]
		local typ = v2.type or "item"
		if aspc_list[nme] then
			ingr_list[i2] = aspc_list[nme]
		else
			-- here's where the magic happens
			aspc_list, todo_list = TM.AspectInherit(aspc_list, todo_list)
		end
	end
	-- this is where the aspects get ordered
	-- this is where the aspects get assigned to an actual recipe
	return aspc_list, todo_list
end