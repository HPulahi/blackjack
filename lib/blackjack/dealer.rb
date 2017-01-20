require 'deck'

class Dealer
  attr_accessor :deck, :hand, :game

  def initialize(game)
    self.hand = []
    self.deck = Deck.new
    self.game = game
  end

  def shuffle_cards
    deck.cards.shuffle!
  end

  def open_game(player)
    shuffle_cards
    deal(player)
    deal(player)
    deal(self)
    deal(self)
    reveal
    puts "TOTAL -> #{total}"
  end

  def deal(player)
    player.hand << deck.draw
  end

  def reveal
    # total = hand.map(&:value).reduce(:+)
    values = hand.map(&:value)
    puts "CARDS -> #{hand.inspect}"
    puts "Dealer: #{values.join(" ")}"
  end

  def total
    hand.map(&:value).reduce(:+)
  end
end
