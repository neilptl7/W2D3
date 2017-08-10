require 'deck'
require 'rspec'

describe 'Deck' do
  subject(:deck){Deck.new}
  it 'create deck with 52 cards with suit and value' do
    expect(deck.deck.uniq.length).to eq(52)
  end

  it "deals 5 cards to a hand" do
    expect(deck.deal.length).to eq(5)
  end

  it "Crete a new deck of 52 cards and shuffle" do
    prev_deck = deck.deck.dup
    deck.reset
    expect(deck.deck).not_to eq(prev_deck)
  end
end
