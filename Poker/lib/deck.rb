require_relative 'card'
require 'byebug'

class Deck
  attr_accessor :deck

  CARD_VALUES = {
    2 => 2,
    3 => 3,
    4 => 4,
    5 => 5,
    6 => 6,
    7 => 7,
    8 => 8,
    9 => 9,
    10 => 10,
    :J => 11,
    :Q => 12,
    :K => 13,
    :A => 14
  }

  CARD_SUITS = {
    :heart => "hearts",
    :spades => "spades",
    :diamonds => "diams",
    :clubs => "clubs"
  }

  def initialize
    @deck = []
    create_deck
    shuffle
  end

  def create_deck
    CARD_SUITS.each do |sym, suit|
      CARD_VALUES.each do |sym, value|
        @deck << Card.new(suit, value)
      end
    end
  end

  def shuffle
    @deck.shuffle!
  end

  def deal
    hand = []
    5.times do |i|
      hand << @deck.pop
    end
    hand
  end

  def reset
    @deck.clear
    create_deck
    shuffle
  end

end
