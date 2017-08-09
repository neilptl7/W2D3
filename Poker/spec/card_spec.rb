require 'rspec'
require 'card'


describe 'Card' do
  subject(:card) { Card.new(:heart, 7) }
  it "initialize card." do
    expect(card.is_a?(Card)).to be true
  end



end
