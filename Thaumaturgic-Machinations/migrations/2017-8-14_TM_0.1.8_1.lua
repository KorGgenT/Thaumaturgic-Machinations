function migrate_recipe_tech(recipe, tech)
	for k,force in pairs(game.forces) do
	  force.recipes["tm-filter-burner-inserter"].enabled = force.technologies["magic"].researched
	end
end
