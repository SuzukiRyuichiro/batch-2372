require_relative '../warthog'
describe Warthog do
  describe "#talk" do
    it 'should grunt with its name' do
      pumba = Warthog.new('Pumba')

      expect(pumba.talk).to eq("Pumba grunts")
    end
  end
end
