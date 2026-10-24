require_relative 'animal'

class Lion < Animal
  def talk
    # return a string like "Simba roars" / "Nala roars" / "Katy perry roars"
    "#{name} roars"
  end

  def eat(food)
    "#{super()} Law of the jungle!"
  end
end
