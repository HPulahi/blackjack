module Blackjack
  class Dealer
    include TotalsHelper

    attr_accessor :game, :deck, :hand

    def initialize(game)
      @game = game
      @hand = []
    end

    def new_game
      @deck = Card.all
      deck.shuffle!

      deal_inital
      redeal if player.total_hand_invalid?
    end

    def hit(player)
      player.hand << deck.draw
    end

    private

    def deal_initial
      2.times { |i| card_for(player) }
      2.times { |i| card_for(self) }
    end

    def card_for(player)
      player.hand << deck.draw
    end

    def redeal
      reset_game
      new_game
    end

    def reset_game
      player.hand     = []
      self.hand       = []
    end

    def end_game
      until.total > 17
        hit(self)
      end
    end
  end
end
