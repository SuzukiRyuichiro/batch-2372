require 'csv'

class Cookbook
  def initialize(csv_file_path)
    @recipes = []
    @csv_file_path = csv_file_path
    load_csv
  end

  def all
    # Return all recipes in the cookbook
    @recipes
  end

  def create(recipe) # expect a Recipe instance
    # TODO: add incoming recipe into the cookbook (aka @recipes)
    @recipes << recipe
    save_csv
  end

  def destroy(recipe_index) # expect an Integer
    @recipes.delete_at(recipe_index)
    save_csv
  end

  def load_csv
    # TODO: load recipes from CSV
    # Go over each rows of the CSV
    CSV.foreach(@csv_file_path) do |row|
      # On each row, re-create the Recipe instance with the name and description
      name = row[0]
      description = row[1]
      # Put it into the @recipes
      @recipes << Recipe.new(name, description)
    end
  end

  def save_csv
    # TODO: save recipes to CSV
    # Open the csv file (wb mode, write from scratch)
    CSV.open(@csv_file_path, 'wb') do |csv|
      # Iterate over each @recipes
      @recipes.each do |recipe|
        # on each recipe, we write the name and description as a row into the CSV
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
