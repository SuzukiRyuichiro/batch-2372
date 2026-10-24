require_relative 'wizard'
require_relative 'warrior'

moktan = Wizard.new('Moktan', 100)
vu = Wizard.new('Vu', 200)

yuu = Warrior.new('Yu', 200)

# p moktan.name
# p vu.total_power
# p yuu.total_power

# p moktan.can_cast_spell?
# p yuu.can_cast_spell?

# p Wizard.spells # Class method!
# 

# Self
# p moktan.say_hello
# p vu.say_hello
# 
yuu.join_forces(vu)

p yuu

p vu