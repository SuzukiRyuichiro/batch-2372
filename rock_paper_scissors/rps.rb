def play_game(user_hand, bot_hand) # example arguments 'rock', 'scissors'
  # returns the winner 'user', 'bot' or 'draw'

  # first, check if both of the hands are the same
  # if so, return 'draw'
  # Guard clauses
  return 'draw' if user_hand == bot_hand

  # check if the hands are the three possible user win situation
  # if so return 'user'
  win_combo = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']]
  # hey is the combo of [user_hand, bot_hand] in the win_combo
  # if (user_hand == 'rock' && bot_hand == 'scissors') || (user_hand == 'paper' && bot_hand == 'rock') || (user_hand == 'scissors' && bot_hand == 'paper')
  return 'user' if win_combo.include?([user_hand, bot_hand])

  'bot'
end
