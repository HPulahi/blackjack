require 'blackjack/card'

class Deck
  attr_accessor :cards

  def initialize
    self.cards = Card.all
  end

  def draw
    cards.delete(cards.first)
  end

  def shuffle!
    cards.shuffle!
  end
end
