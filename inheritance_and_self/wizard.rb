require_relative 'character'

class Wizard < Character
  attr_writer :warrior
  
  def can_cast_spell?
    true
  end

  def self.spells
    # return an array of spell names in this wizarding world
    ['thunder clap', 'i will magic yuu!', 'Wingardium Leviosa', '水の呼吸']
  end

  def say_hello
    "Hello my name is #{name}"
  end
end
