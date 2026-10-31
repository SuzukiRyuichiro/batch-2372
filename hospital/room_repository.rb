require 'csv'
require_relative 'room'

class RoomRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @rooms = []
    @next_id = 1
    load_csv
  end

  def create(room) # expect room
    # TODO: assign the room a new ID
    room.id = @next_id
    # TODO: add the room to the array and save the CSV
    @rooms << room
    # TODO: increment the next id by one
    @next_id += 1
  end

  def load_csv
    CSV.foreach(@csv_file_path, headers: true, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity].to_i

      @rooms << Room.new(row)
    end

    # TODO: update the next ID to the one after the last ID
    @next_id = @rooms.last.nil? ? 1 : @rooms.last.id + 1
  end
end

puts '=' * 20
puts "before adding the new room"

repo = RoomRepository.new('rooms.csv')
pp repo

puts '=' * 20
puts "adding the new room"
new_room = Room.new(name: 'BIG', capacity: 100)
repo.create(new_room)

puts '=' * 20
puts "after adding the room"
pp repo