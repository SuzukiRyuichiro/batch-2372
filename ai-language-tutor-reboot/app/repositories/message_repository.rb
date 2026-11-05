class MessageRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @messages = []
    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def create(message) # expect Message instance
    # assign the next id to the incoming message
    message.id = @next_id
    @messages << message
    @next_id += 1
    save_csv
  end

  def all
    @messages
  end


  def load_csv
    # TODO: implement if we have time
  end

  def save_csv
    # TODO: implement if we have time
  end
end