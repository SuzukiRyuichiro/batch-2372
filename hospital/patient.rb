class Patient
  attr_reader :name, :age, :weight, :sickness
  attr_accessor :room, :id

  def initialize(attributes = {}) # expect the attributes to be a hash with all of the info
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @weight = attributes[:weight]
    @sickness = attributes[:sickness]
    @cured = attributes[:cured] || false
  end

  def cure!
    @cured = true
  end

  def cured?
    @cured
  end
end
