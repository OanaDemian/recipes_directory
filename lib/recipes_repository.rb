require 'recipe'
class RecipesRepository

  # Selecting all records
  # No arguments
  def all

    DatabaseConnection.connect('recipes_directory')
    # @SQL "SELECT  FROM ";
    sql = "SELECT id, names, time, rating FROM recipes"
    result = DatabaseConnection.exec_params(sql, [])
     result.map{|recipe| Recipe.new(recipe)}
    # Executes the SQL query:
    # SELECT id, names, time, rating FROM students;

    # Returns an array of recipes objects.
  end

  # Gets a single record by its ID
  # One argument: the id (number)
    def find(id)
      sql = 'SELECT names,time,rating FROM recipes WHERE id = $1;'
      params = [id]
      result = DatabaseConnection.exec_params(sql, params)
      result.to_a
  end
end