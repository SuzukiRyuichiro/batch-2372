require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

nala = Lion.new('Nala')
simba = Lion.new('Simba')

timon = Meerkat.new('Timon')
pumba = Warthog.new('Pumba')

animals = [nala, simba, timon, pumba]

animals.each do |animal|
  puts animal.talk
end
