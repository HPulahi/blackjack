require 'json'

class Card

  def self.all
    Data.read.map do |card_hash|
      new(card_hash)
    end
  end

  attr_accessor :id, :value

  def initialize(card_hash)
    self.value = card_hash["value"]
  end

  module Data
    def self.read
      JSON.parse(File.read(File.expand_path("./../data/cards.json", File.dirname(__FILE__))))["cards"]
    end
  end

end
