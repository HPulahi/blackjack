module Blackjack
  class Player
    include TotalsHelper

    def self.actions
      ['hit', 'stand', 'quit']
    end

    attr_accessor :hand

    def initialize
      @hand = []
    end
  end
end
