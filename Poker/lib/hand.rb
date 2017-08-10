require_relative 'card'
require_relative 'deck'



class Hand

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def high_card
    highest_card = @cards.first
    @cards.each do |card|
      if highest_card.value < card.value
        highest_card = card
      end
    end

    highest_card
  end

end
