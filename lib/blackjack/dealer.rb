require 'deck'

class Dealer
  attr_accessor :deck, :hand

  def initialize
    self.deck = Deck.new
  end

  def open_game
    # shuffle deck
    # deal 2 cards
  end
end
