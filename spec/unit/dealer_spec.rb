# encoding: UTF-8
require_relative "../spec_helper"

describe Blackjack::Dealer do
  describe "#initialize" do
    it 'sets the game pending'
    it 'sets a new hand pending'
  end

  describe "#new_game" do
    it 'pending creates a new deck'
    it 'pending shuffles the cards'
    it 'pending assigns a player'
    it 'pending deals 2 cards for the player'
    it 'pending deals 2 cards for self'
    it 'pending redeals cards for an invalid hand'

  end

  describe "#hit" do
    it 'pending takes a card from the deck'
    it 'pending adds a card to the players hand'

    #it "adds a new card to the players deck" do
    #  expect(subject.player.hand.size).to eq(1)
    #end

    #it 'takes a card from the card stack' do
    #  expect(subject.deck.cards.size).to eq 51
    #end
  end

  describe "#end_game" do
    it 'pending adds another card to own hand if under 17'
    it 'pending does not add card to hand if over 17'
    it 'pending shows the outcome'
  end

end
   # it 'shuffles the cards' do
   #   subject.start_game!
   #   hearts = subject.dealer.deck.cards.find_all{ |card| card.suit == "hearts" }
   #   positions = hearts.map{|heart| subject.dealer.deck.cards.rindex(heart) }

   #   expect(positions).not_to eq([0,1,2,3,4,5,6,7,8,9,10,11,12])
   # end

   # it 'deals a 2 card hand from the Dealer' do
   #   subject.start_game!
   #   expect(subject.player.hand.size).to eq 2
   # end

   # it 'deals the dealer 2 cards' do
   #   subject.start_game!
   #   expect(subject.dealer.hand.size).to eq 2
   # end
