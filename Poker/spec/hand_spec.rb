require 'rspec'
require 'hand'
require 'card'

describe 'Hand' do
  subject(:deck) { Deck.new }
  subject(:hand) { Hand.new([
    Card.new('hearts', 12), Card.new('spades', 11),Card.new('hearts', 2),
    Card.new('hearts', 5),Card.new('spades', 7)
    ]) }
  it "Initialize hand with 5 cards." do
    # new_hand = Hand.new(deck.deal)
    expect(hand.cards.length).to eq(5)
  end

  it 'returns high card if cards are different' do
    expect(hand.high_card.value).to eq(12)
  end
end
