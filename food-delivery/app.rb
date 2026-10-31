require_relative 'app/repositories/meal_repository'
# require_relative 'controller'
require_relative 'router'

meals_csv_file_path = File.join(__dir__, 'data/meals.csv')
meal_repository   = MealRepository.new(meals_csv_file_path)
# controller = Controller.new(cookbook)

router = Router.new

# Start the app
router.run
