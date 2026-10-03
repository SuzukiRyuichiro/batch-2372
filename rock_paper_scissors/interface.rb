# frozen_string_literal: true

require_relative 'rps'

puts '🎮 Welcome to RPS arena 🎮 (type quit to exit)'

valid_hands = %w[rock paper scissors]
user_hand = nil
while user_hand != 'quit'
  puts 'What is your hand?? (Rock paper or scissors)'
  user_hand = gets.chomp.downcase
  bot_hand = valid_hands.sample

  if user_hand == 'quit'
    puts 'Bye bye!'
  elsif !valid_hands.include?(user_hand)
    puts 'Pick a valid hand!! 😡'
  else
    result = play_game(user_hand, bot_hand)

    puts '=' * 10
    puts "🧑 #{user_hand}, 🤖 #{bot_hand}"
    puts '=' * 10

    if result == 'draw'
      puts 'It was a draw! 😐'
    else
      puts "#{result.capitalize} won!!!"
    end
  end
end
