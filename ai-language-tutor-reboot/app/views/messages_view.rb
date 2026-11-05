class MessagesView
  def ask_for_user_input
    puts "What is your message?"
    gets.chomp
  end

  def display_list(messages)
    messages.each do |message|
      display_message(message)
    end
  end

  def display_message(message)
    puts "#{message.role == 'assistant' ? '🤖' : '🧒'} #{message.content}"
  end
end
