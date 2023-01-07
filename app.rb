require './lib/recipes_repository'
require './lib/recipe'
repo = RecipesRepository.new
result = repo.all.map {| recipes_hash | "#{recipes_hash.id} - #{recipes_hash.names} - #{recipes_hash.time} - #{recipes_hash.rating}"}.join("\n")
print result