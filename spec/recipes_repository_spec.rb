require_relative '../lib/recipes_repository.rb'
require_relative '../lib/recipe.rb'
require 'rspec'

def reset_recipes_directory_table
    seed_sql = File.read('spec/seeds_recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory' })
    connection.exec(seed_sql)
  
end
  
  describe RecipesRepository do
    before(:each) do 
      reset_recipes_directory_table
    end
  
    # (your tests will go here).
  it "should return 6 items in an array" do
  repo = RecipesRepository.new
  result = repo.all 
  puts result[0].id.is_a?(String)
  puts result[0].rating.is_a?(String)
  puts result[0].time
  puts result[0].names
  expect(result.length).to eq 6
  end
  it "should return 2 items in an array" do
    repo = RecipesRepository.new
    result = repo.find(1)
    expect(result).to eq [{"names"=>"pizza", "rating"=>"5", "time"=>"45"}]
end
end