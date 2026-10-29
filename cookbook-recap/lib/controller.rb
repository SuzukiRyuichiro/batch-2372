require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # go to cookbook to get all the recipes
    recipes = @cookbook.all
    # tell the view to display them nicely
    @view.display_list(recipes)
  end

  def add
    # use the view to get the name of the recipe
    name = @view.ask_for('name')
    # use the view to get the name of the description
    description = @view.ask_for('description')
    # use the model to instantiate a new recipe
    recipe = Recipe.new(name, description)
    # tell cookbook to save that into the list
    @cookbook.create(recipe)
  end

  def remove
    # display the recipes nicely with a number (view)
    # ask for the number to delete (view)
    # tell the cookbook to delete that recipe
  end
end
