require_relative '../views/meals_view'
require_relative '../models/meal'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def add
    # ask the user for name and get input (view)
    name = @view.ask_for_name
    # ask the user for price and get input and to_i (view)
    price = @view.ask_for_price
    # make a Meal object (instance) from the Meal model
    meal = Meal.new(name: name, price: price)
    # create the meal with MealRepository instance
    @meal_repository.create(meal)
  end

  def list
    # TODO: get all the meals from the repo
    meals = @meal_repository.all
    # TODO: ask the view to display them nicely
    @view.display_list(meals)
  end
end
