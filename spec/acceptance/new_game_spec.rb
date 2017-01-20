require "spec_helper"
require "blackjack"

describe Blackjack do
  let(:game) { Blackjack.new } 

  describe '#initialize' do
    it 'has a Dealer' do
      expect(subject.dealer).to be_a Dealer
    end

    it 'has a Player' do
      expect(subject.player).to be_a Player
    end
  end

  describe '#start_game!' do
    it 'shuffles the deck' do
      # expect()
    end

    it 'deals a 2 card hand from the Dealer' do
      expect(subject.player.hand.size).to eq 2
      expect(subject.dealer.hand.size).to eq 2
    end
  end
end
