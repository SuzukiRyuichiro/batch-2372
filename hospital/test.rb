require_relative 'patient'
require_relative 'room'

scooter = Patient.new({ age: 30, name: 'Scooter', sickness: 'Common cold', cured: true })

a_patient = Patient.new
vu = Patient.new(age: 30, name: 'Vu', sickness: 'Fever')

p scooter
p a_patient

room_101 = Room.new(name: '101', capacity: 2)
p room_101

# add the scooter and a_patinet to room 101
# 
room_101.add(scooter)
room_101.add(a_patient)
# room_101.add(vu)

p room_101