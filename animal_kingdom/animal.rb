class Animal
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def self.habitats
    %w[Jungle Desert Grassland Ocean Mountain Forest]
  end

  def eat(food)
    "#{name} eats a #{food}."
  end
end