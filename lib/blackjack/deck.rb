require 'card'
class Deck
  
  attr_accessor :cards
  def initialize
    self.cards = Card.all
    set_position(cards)
  end

  def set_position(cards)
    cards.each_with_index do |card, i|
      card.position = i += 1
    end
  end

end
