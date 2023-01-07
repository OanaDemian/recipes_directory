class RecipesRepository

  # Selecting all records
  # No arguments
  def all

    DatabaseConnection.connect('recipes_directory')
    # @SQL "SELECT  FROM ";
    sql = "SELECT id, names, time, rating FROM recipes"
    result = DatabaseConnection.exec_params(sql, [])
     result.to_a
    # Executes the SQL query:
    # SELECT id, names, time, rating FROM students;

    # Returns an array of recipes objects.
  end

  # Gets a single record by its ID
  # One argument: the id (number)
  def find(id)
    # Executes the SQL query:
    # SELECT id, names, time, rating FROM recipes WHERE id = $1;

    # Returns a single Recipes object.
  end
end