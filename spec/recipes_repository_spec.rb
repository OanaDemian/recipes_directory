require_relative '../lib/recipes_repository.rb'
require 'rspec'

def reset_recipes_directory_table
    seed_sql = File.read('spec/seeds_recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory' })
    connection.exec(seed_sql)
  
end
  
  describe RecipesRepository do
    before(:each) do 
      reset_book_store_table
    end
  
    # (your tests will go here).
  it "should return 6 items in an array" do
  repo = RecipesRepository.new
  result = repo.all.length 
  expect(result).to eq 6
  end
  end