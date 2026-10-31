class Router
  def initialize
    # @controller = controller
    @running    = true
  end

  def run
    puts "Welcome to the Wags 🚌"
    puts "           --           "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then puts "TODO: implement list meals"
    when 2 then puts "TODO: implement add meal"
    when 3 then puts "TODO: implement list customer"
    when 4 then puts "TODO: implement add customer"
    when 8 then stop
    else
      puts "Please press 1, 2, 3, 4 or 8"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a customer"
    puts "8 - Stop and exit"
  end
end