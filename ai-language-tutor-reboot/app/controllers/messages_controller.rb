require_relative '../views/messages_view'
require_relative '../models/message'

class MessagesController
  def initialize(message_repository)
    @message_repository = message_repository
    @chat = RubyLLM.chat.with_instructions(system_prompt)
    @messages_view = MessagesView.new
  end

  def add
    # TODO: ask user for input (view)
    raw_user_message = @messages_view.ask_for_user_input
    # TODO: create Message instance with that input (Model)
    user_message = Message.new(content: raw_user_message, role: 'user')
    # TODO: put the message instance into repo
    @message_repository.create(user_message)
    # TODO: pass the user input to AI
    response = @chat.ask(raw_user_message)
    # TODO: extract the AI response
    raw_assistant_message = response.content
    # TODO: create Message instance with AI response (model)
    assistant_message = Message.new(content: raw_assistant_message, role: 'assistant')
    # TODO: put the message instance into repo
    @message_repository.create(assistant_message)
    # TODO: display the AI response to the user (view)
    @messages_view.display_message(assistant_message)
  end

  def list
    # TODO: get all messages
    messages = @message_repository.all
    # TODO: display them nicely
    @messages_view.display_list(messages)
  end

  private

  def system_prompt
    <<~PROMPT
      You are a Japanese tutor. Respond to user's question or conversation
      in a simple Japanese phrases. After the Japanese response, include
      the English translation in brackets.
      e.g. こんにちは！ (Hello !)
    PROMPT
  end
end
