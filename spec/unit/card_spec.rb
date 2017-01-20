# encoding: UTF-8
require_relative "../spec_helper"
require "card"

describe Card do
  describe ".all" do
    it 'loads 12 cards from the data store' do
       expect(Card.all.size).to eq 13
    end
  end
end
