# encoding: UTF-8
require_relative "../spec_helper"
require "deck"

describe Deck do

  describe '#initialize' do
    it 'has 52 cards' do
      expect(subject.cards.size).to eq 52
    end

    it 'sets a postion for every card' do
      card_positions = subject.cards.map(&:position)
      expect(card_positions).to eq 1.upto(52).to_a
    end
  end

  describe '#shuffle' do
    it 'randomly mixes the deck of cards' do
      subject.shuffle
      card_positions = subject.cards.map(&:position)
      expect(card_positions).not_to eq 1.upto(52).to_a
    end
    
  end
end

