require 'card'

class Deck
  attr_accessor :cards

  def initialize
    self.cards = Card.all
  end


end
