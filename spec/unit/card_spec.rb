# encoding: UTF-8
require_relative "../spec_helper"
require "card"

describe Card do
  describe ".all" do
    it 'loads 12 cards from the data store' do
       expect(Card.all.size).to eq 52
    end

    it "instantates instances of Card" do
      Card.all.all? { |review| expect(review).to be_a Card }
    end
  end

  describe ".suits" do
    it 'returns 4 suits' do
      expect(Card.suits.size).to eq 4
    end

    it 'returns the correct values' do
      expect(Card.suits).to include("hearts", "diamonds", "spades", "clubs")
    end
  end
end
