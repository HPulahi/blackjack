module Blackjack
  class Dealer
    include TotalsHelper

    attr_accessor :game, :deck, :hand, :player

    def initialize(game)
      @game   = game
      @player = game.player
      @hand   = []
    end

    def new_game
      @deck = Card.all
      deck.shuffle!

      deal
      show_output(player.show_hand)
      redeal if player.total_hand_invalid?
    end

    def hit(player)
      player.hand << draw_card
    end

    def end_game
      until total > 17
        hit(self)
        show_output(self.last_card)
      end
    end

    private

    def deal
      2.times { |i| hit(player) }
      2.times { |i| hit(self) }
    end

    def redeal
      reset_game
      new_game
    end

    def draw_card
      deck.delete(deck.first)
    end

    def reset_game
      player.hand     = []
      self.hand       = []
    end
  end
end
