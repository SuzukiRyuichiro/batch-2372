require_relative '../lion'
describe Lion do
  describe '#talk' do
    it 'should roar with its name' do
      simba = Lion.new('Simba')

      expect(simba.talk).to eq('Simba roars')
    end
  end

  describe '#eat' do
    it 'returns a sentence with the name and the food it is eating + Law of the jungle!' do
      simba = Lion.new('Simba')
      actual = simba.eat('gazelle')
      expected = 'Simba eats a gazelle. Law of the jungle!'

      expect(actual).to eq(expected)
    end
  end
end
