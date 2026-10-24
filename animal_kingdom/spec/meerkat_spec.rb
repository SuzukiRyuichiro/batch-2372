require_relative '../meerkat'
describe Meerkat do
  describe "#talk" do
    it 'should bark with its name' do
      timon = Meerkat.new('Timon')

      expect(timon.talk).to eq("Timon barks")
    end
  end
end
