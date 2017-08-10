class Card

  attr_reader :suit, :value



  CARD_SUITS = {
    :heart => "&hearts;",
    :spades => "&spades;",
    :diamonds => "&diams;",
    :clover => "&clubs;"
  }

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def to_s
    "#{CARD_SUITS[@suit]} /n #{@value}"
  end

end
