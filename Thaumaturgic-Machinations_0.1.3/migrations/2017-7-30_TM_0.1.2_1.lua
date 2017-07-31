function migrate_recipe_tech(recipe, tech)
	for k,force in pairs(game.forces) do
	  force.recipes["TM-prod-module"].enabled = force.technologies["magic-modules-1"].researched
	  force.recipes["TM-prod-module-2"].enabled = force.technologies["magic-modules-2"].researched
	  force.recipes["TM-prod-module-3"].enabled = force.technologies["magic-modules-3"].researched
	end
end
