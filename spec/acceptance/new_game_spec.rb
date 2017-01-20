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
    before do
      subject.start_game!
    end

    it 'shuffles the cards' do
      hearts = subject.dealer.deck.cards.find_all{ |card| card.suit == "hearts" } 
      positions = hearts.map{|heart| subject.dealer.deck.cards.rindex(heart) }

      expect(positions).not_to eq([0,1,2,3,4,5,6,7,8,9,10,11,12])
    end

    it 'deals a 2 card hand from the Dealer' do
      expect(subject.player.hand.size).to eq 2
    end

    it 'deals the dealer 2 cards' do
      expect(subject.dealer.hand.size).to eq 2
    end
  end
end
