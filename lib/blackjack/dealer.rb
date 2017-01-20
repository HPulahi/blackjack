require 'deck'

class Dealer
  attr_accessor :deck, :hand, :game

  def initialize(game)
    self.hand = []
    self.game = game
  end

  def shuffle_cards
    deck.cards.shuffle!
  end

  def open_game(player)
    self.deck = Deck.new
    shuffle_cards
    deal(player)
    deal(player)
    deal(self)
    deal(self)
  end

  def deal(player)
    player.hand << deck.draw
  end

  def reveal
    hand.map(&:value)
  end

  def total
    hand.map(&:value).reduce(:+)
  end
end
