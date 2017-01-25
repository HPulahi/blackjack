# encoding: UTF-8
require_relative "../spec_helper"

describe Blackjack::Card do
  describe ".all" do
    it 'has 52 cards' do
      card = double("Card")
      binding.pry
    end

    it 'has 4 suits pending'

    it 'has 12 cards for each suit pending'

    it "instantates instances of Card" do
      Blackjack::Card.all.all? { |review| expect(review).to be_a Blackjack::Card }
    end
  end
end
