class View
  def ask_for(thing)
    puts "What is the #{thing}?"
    gets.chomp
  end

  def display_list(recipes) # expect an array of Recipe instances
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}: #{recipe.name} - #{recipe.description}"
    end
  end
end