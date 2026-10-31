require 'csv'
require_relative '../models/meal'

class MealRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @meals = []
    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def load_csv
    # open the CSV file
    # Go through row by row
    CSV.foreach(@csv_file_path, headers: true) do |row|
      # on each row, recreate the Meal instance
      meal = Meal.new({ id: row["id"].to_i, name: row["name"], price: row["price"].to_i })
      # push it into the @meals array
      @meals << meal
    end
    #
    # set the @next_id accordingly
    @next_id = @meals.empty? ? 1 : @meals.last.id + 1
  end

  def all
    # TODO: return all meals
    @meals
  end

  def find(id)
    # TODO: return a single instance of Meal with the given ID
    @meals.select { |meal| meal.id == id }.first
  end

  def create(meal)
    # TODO: assign ID, add it to the array, save csv, update next id
    meal.id = @next_id

    @meals << meal

    save_csv

    @next_id += 1
  end

  def save_csv
    # TODO: save meals to CSV
    # Open the csv file (wb mode, write from scratch)
    CSV.open(@csv_file_path, 'wb') do |csv|
      # insert the header
      csv << ['id', 'name', 'price']
      # Iterate over each @meals
      @meals.each do |meal|
        # on each meal, we write the id, name and price as a row into the CSV
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end
end

# csv_file_path = File.join(__dir__, '../../data/meals.csv')
# repo = MealRepository.new(csv_file_path)
# pp repo

# pizza = Meal.new(name: 'pizza', price: 1600)
# repo.create(pizza)
# pp repo