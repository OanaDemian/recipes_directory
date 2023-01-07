class Recipe
attr_accessor :id, :names, :rating, :time

def initialize(recipe_hash)
    @id = recipe_hash["id"]
    @rating = recipe_hash["rating"]
    @time = recipe_hash["time"]
    @names = recipe_hash["names"]
end
    
end 
