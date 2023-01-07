require 'recipes_directory/lib/recipe.rb'
require 'recipes_directory/lib/recipes_repository.rb'
repo = RecipesRepository.new
result = repo.all.map {| recipes_hash | "#{recipes_hash["id"]} - #{recipes_hash["names"]} - #{recipes_hash["time"]} - #{recipes_hash["rating"]}"}.join("\n")
print result