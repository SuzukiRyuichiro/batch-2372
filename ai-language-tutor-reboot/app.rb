# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require_relative "config"
require_relative 'app/repositories/message_repository'
require_relative 'app/routers/message_router'
require_relative 'app/controllers/messages_controller'

# load and instantiate the repository
csv_file_path = File.join(__dir__, 'data/messages.csv')
message_repository = MessageRepository.new(csv_file_path)
# load and instantiate the controller
messages_controller = MessagesController.new(message_repository)
# load and instantiate the router
message_router = MessageRouter.new(messages_controller)
# run the app
#
message_router.run
