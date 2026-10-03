require_relative 'rps'

puts play_game('rock', 'scissors') == 'user'
puts play_game('paper', 'rock') == 'user'
puts play_game('paper', 'scissors') == 'bot'
puts play_game('rock', 'paper') == 'bot'
puts play_game('paper', 'paper') == 'draw'
puts play_game('rock', 'rock') == 'draw'
