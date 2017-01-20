require 'blackjack/dealer'
require 'blackjack/player'

class Blackjack
  attr_accessor :dealer, :player

  def initialize
    introduction
    self.dealer = Dealer.new
    self.player = Player.new
  end

  def start_game!
  end
  private

  def introduction
    puts "\n\n<<< Welcome to the game of Blackjack >>>\n\n"
    puts "This is an game will test your skills against the greatest player of them all.\n\n"
    puts "The Dealer!"
  end
end
