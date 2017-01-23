module Blackjack
  class Dealer
    include AccountUtilities
    
    attr_accessor :game, :deck :hand

    def initialize(game)
      @game = game
      @hand = []
    end

    def new_game
      @deck = Card.all
      deck.shuffle!
      
      deal
      redeal if game.player.total_hand_invalid?
    end

    def deal
      card_for(game.player)
      card_for(game.player)
      card_for(self)
      card_for(self)
      
      show_output(game.player.reveal)
    end
    
    def card_for(player)
      player.hand << deck.draw
    end

    def hit(player)
      card = deck.draw
      player.hand << card 
      
      show_output(card)
    end

    def show_output(values=nil)
      puts "Dealer: #{values}"
    end
    
    def redeal
      reset_game
      new_game
    end

    def reset_game
      game.player.hand  = []
      @hand             = []
    end
  end
end