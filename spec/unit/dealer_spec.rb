# encoding: UTF-8
require_relative "../spec_helper"
require "dealer"

describe Dealer do
  describe "#initialize" do
    it 'opens a new Deck of Cards' do
      expect(subject.deck.cards.size).to eq 52
    end
  end

  describe "#deal" do
    it "adds a new card to the players deck" do
      expect(subject.player.hand.size).to eq(1)
    end

    it 'takes a card from the card stack' do
      expect(subject.deck.cards.size).to eq 51
    end
  end

end
