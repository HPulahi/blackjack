# encoding: UTF-8
require_relative "../spec_helper"
require "deck"

describe Deck do

  describe '#initialize' do
    it 'has 52 cards' do
      expect(subject.cards.size).to eq 52
    end

    it 'has 4 suits' do
      suits = subject.cards.map(&:suit).uniq
      expect(suits.count).to eq 4
    end

    it 'has all cards in order' do
      hearts = subject.cards.find_all{ |card| card.suit == "hearts" } 
      positions = hearts.map{|heart| subject.cards.rindex(heart) }
      expect(positions).to eq([0,1,2,3,4,5,6,7,8,9,10,11,12])
    end
  end

end

