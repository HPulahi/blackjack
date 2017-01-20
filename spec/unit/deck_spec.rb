# encoding: UTF-8
require_relative "../spec_helper"
require "deck"

describe Deck do

  describe '#initialize' do
    it 'has 52 cards' do
      expect(subject.cards.size).to eq 52
      
    end
  end
end

