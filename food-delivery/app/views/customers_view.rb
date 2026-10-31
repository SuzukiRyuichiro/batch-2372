class CustomersView
  def ask_for_name
    puts "Please enter the name"
    gets.chomp
  end

  def ask_for_address
    puts "Please enter the address"
    gets.chomp
  end

  def display_list(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - 🏷️ #{customer.name} 🏠#{customer.address}"
    end
  end
end
