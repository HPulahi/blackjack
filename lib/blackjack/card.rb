require 'json'

class Card
  def self.all
    cards = []
    suits.each do |suit|
      Data.read.map {|card_hash| cards << new(card_hash, suit)}
    end
    cards
  end

  def self.suits
    %w(hearts diamonds spades clubs)
  end

  attr_accessor :id, :value, :suit

  def initialize(card_hash, suit)
    self.value = card_hash["value"]
    self.suit = suit
  end

  module Data
    def self.read
      JSON.parse(File.read(File.expand_path("./../data/cards.json", File.dirname(__FILE__))))["cards"]
    end
  end

end
