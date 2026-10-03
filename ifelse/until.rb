price_to_find = rand(1..5) # 5
puts "Guess the price!"
user_guess = gets.chomp.to_i # 1

# until the user's guesses correctly
until price_to_find == user_guess
  # ask the user to guess the price
  puts "Guess the price again!"
  user_guess = gets.chomp.to_i # 5
  # check if the price matches
  # if it doesn't match, repeat
end

# print that you guessed it right
puts "Congrats! Your guess #{user_guess} is correct!"
