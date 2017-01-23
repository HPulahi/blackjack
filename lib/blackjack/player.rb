module Blackjack
  class Player
    include TotalsHelper

    def self.actions
      ['hit', 'stand', 'quit']
    end

    attr_accessor :hand

    def initialize
      self.hand = []
    end
  end
end
