class Room
  attr_reader :name, :capacity, :patients 
  attr_accessor :id

  def initialize(attributes = {}) # expect the attributes to be a hash with all of the info
    @id = attributes[:id]
    @name = attributes[:name]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.length >= @capacity
  end

  def add(patient) # expect a instance of Patient
    # check the capacity first
    raise StandardError, 'No more people allowed!' if full?

    # assign the room attribute to the patient instance as the room they were added into
    patient.room = self
    
    # push the patient into the patients array
    @patients << patient
  end
end
