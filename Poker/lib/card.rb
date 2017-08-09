class Card

  card_suits = {
    :heart => "♥",
    :spades => "♠",
    :diamonds => "♦",
    :clover => "♣"
  }

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def to_s
    "#{card_suits[suit]} /n #{value}"
  end

end
