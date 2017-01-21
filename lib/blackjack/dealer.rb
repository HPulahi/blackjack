require 'blackjack/deck'

class Dealer
  attr_accessor :deck, :game, :hand

  def initialize(game)
    self.hand = []
    self.game = game
  end

  def open_game
    self.deck = Deck.new
    deck.shuffle!

    deal_two_for(game.player)
    deal_two_for(self)

    puts "Dealer: #{game.player.reveal}"

    if game.player.total_hand_invalid?
      redeal
    end
  end

  def deal_two_for(player)
    deal_card_for(player)
    deal_card_for(player)
  end

  def deal_card_for(player)
    card = deck.draw
    player.hand << deck.draw
  end

  def hit(player)
    card = deck.draw
    player.hand << card 

   puts "Dealer: #{card.value}"
  end

  def total_hand_invalid?
    total > 21
  end

  def redeal
    game.player.hand = []
    self.hand = []
    
    open_game
  end

  def reveal
    hand.map(&:value)
  end

  def show
    hand.map(&:value).join(" + ")
  end

  def total
    hand.empty? ? 0 : hand.map(&:value).reduce(:+)
  end
end

