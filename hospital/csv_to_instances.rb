require 'csv'
require_relative 'room'
# read the rooms CSV
# re-instantiate room instances from each row
# put it into an array of room
rooms = []

CSV.foreach('rooms.csv', headers: true, header_converters: :symbol) do |row|
  row[:id] = row[:id].to_i
  row[:capacity] = row[:capacity].to_i

  rooms << Room.new(row)
end

p rooms