class MealsView
  def ask_for_name
    puts "Please enter the name"
    gets.chomp
  end

  def ask_for_price
    puts "Please enter the price"
    gets.chomp.to_i
  end

  def display_list(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - 🏷️ #{meal.name} 💰¥#{meal.price}"
    end
  end
end
