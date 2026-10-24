require_relative '../animal'
describe Animal do
  describe "#initialize" do
    it 'initializes with a name' do
      animal = Animal.new('Pochi')

      expect(animal).to be_instance_of Animal
      expect(animal.name).to eq('Pochi')
    end
  end

  describe "::habitats" do
    it 'returns all possible habitats for animals' do
      expected = %w[Jungle Desert Grassland Forest Ocean Mountain]
      actual = Animal.habitats

      expect(actual).to match_array(expected)
    end
  end

  describe "#eat" do
    it 'returns a sentence with the name and the food it is eating' do
      pochi = Animal.new('Pochi')
      actual = pochi.eat('cake')
      expected = "Pochi eats a cake."

      expect(expected).to eq(actual)
    end
  end
end
