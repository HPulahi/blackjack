# encoding: UTF-8
require_relative "../spec_helper"
require "dealer"

describe Dealer do
  describe "#initialize" do
    it 'opens a new Deck of Cards' do
      expect(subject.deck.cards.size).to eq 52
    end
  end

end
