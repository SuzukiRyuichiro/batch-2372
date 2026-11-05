class Message
  attr_accessor :id
  attr_reader :role, :content 
  
  def initialize(attributes = {})
    @id = attributes[:id]
    @role = attributes[:role]
    @content = attributes[:content]
  end
end