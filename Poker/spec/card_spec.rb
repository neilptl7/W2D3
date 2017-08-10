require 'rspec'
require 'card'


describe 'Card' do
  subject(:card) { Card.new(:heart, 7) }
  it "initialize card." do
    expect(card.is_a?(Card)).to be true
  end

  describe '#to_s' do
    it 'Assigns suit and value to card' do
      expect(card.to_s).to eq("&hearts; /n 7")
    end
  end

end
