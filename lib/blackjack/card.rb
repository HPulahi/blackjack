module Blackjack
  class Card
    VALUES = {
      2   => :two,
      3   => :three,
      4   => :four,
      5   => :five,
      6   => :six,
      7   => :seven,
      8   => :eight,
      9   => :nine,
      10   => :ten,
      11   => :ace,
      12   => :jack,
      13   => :queen,
      14   => :king
    }
          
    SUITS = {
      0   => :hearts,
      1   => :diamonds,
      2   => :clubs,
      3   => :spades
    }

    attr_accessor :value, :suit
    
    def self.all
      Array.new(4) { |index| VALUES.map{ |key, _| new(key, index)}}.flatten
    end

    def initialize(key, index)
      @value  = ket
      @suit   = SUITS[index]
    end
  end
end