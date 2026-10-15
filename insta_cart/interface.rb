# how should we store the shop info

# read-only
# name => price
shop = {
  'kiwi' => { price: 1.25, stock: 5 },
  'banana' => { price: 0.5, stock: 3 },
  'mango' => { price: 4, stock: 3 },
  'asparagus' => { price: 9, stock: 3 }
}

# name => amount
cart = {}

# 1. Print welcome
puts '-' * 20
puts 'Welcome to our store!!'
puts '-' * 20
# 2. print out the items and its price we sell
puts 'In our store today....'
shop.each do |item, info|
  puts "#{item}: $#{info[:price]} (#{info[:stock]} available)"
end

# ---- where we start the loop
item = ''

until item == 'quit'
  # 3. ask what the user wants
  puts "Which item? (or 'quit' to exit)"
  item = gets.chomp
  # 3a. check if the user's requested item is in the shop (hint: perhaps use `.key?` or `.include?`)
  # 3c. if the item is in the shop
  if shop.include?(item)
    puts 'Yey we have that!'
    # 4. ask how many of that item user wants
    puts 'how many?'
    item_number = gets.chomp.to_i

    # is there enough quantity left in the shop???
    if item_number > shop[item][:stock]
      # if there is not enough in the shop
      # apologize about it, and print how many are left in the shop
      puts "Sorry we only have #{shop[item][:stock]}"
    else
      # if there is enough in the shop,
      # 5. put that item and its quantity in the cart
      if cart.include?(item)
        # 5b. if the item is in the cart, increment that amount by the requested number
        cart[item] += item_number
      else
        # 5a. if the item is not in the cart, add a new key value pair
        cart[item] = item_number
      end

      # TODO: decrease the number of available amount by the amount we gave to the cart
      shop[item][:stock] -= item_number
    end
  elsif item == 'quit'
    puts 'Please proceed to the checkout ➡️'
  else
    # 3b. if the item is not in the shop -> print that shop does not have it
    puts "Sorry we don't have #{item} in our store"
  end
  # 6. repeat the loop until the user says quit
end

puts '-' * 20
# -----
# 7. calculate the total and print them out
total = 0
# Iterate over each key value pair in the cart
cart.each do |item, quantity|
  price = shop[item][:price]
  subtotal = price * quantity
  # Calculate the subtotal for each item
  puts "#{item}: $#{price} X #{quantity} = $#{subtotal}"
  # Accumulate the subtotal into total
  total += subtotal
end

puts "The total price is $#{total}"

puts '-' * 20

puts 'Thank you for shopping in our store!!'
