"spec_helper"
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
end
