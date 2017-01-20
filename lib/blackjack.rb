require 'blackjack/dealer'
require 'blackjack/player'

class Blackjack
  class Config
    @@actions = ['hit', 'stand']
    def self.actions
      @@actions
    end
  end

  attr_accessor :dealer, :player

  def initialize
    # introduction
    self.dealer = Dealer.new(self)
    self.player = Player.new
  end

  def start_game!
    # introduction
    dealer.open_game(player)
    if player.total > 21 || dealer.total > 21
      puts("re-deal")
      player.hand = []
      dealer.hand = []
      dealer.open_game(player)
    end

    until result == :quit
      action, args = get_action
      result = do_action( action, args )
    end
  end

  def get_action
    action = nil
    until Main::Config.actions.include?(action)
      puts "Actions " + Main::Config.actions.join(", ") if action
      print "> "
      user_response = gets.chomp
      args = user_response.downcase.strip.split(' ')
      action = args.shift
   end
   return action, args
  end

  def do_action(action, args=[])
    case action
    when 'hit'
      dealer.deal(player) 
    when 'stand'
    when 'quit'
    return :quit
    else 
      puts 'I dont understand that command'
    end
  end

  private

  def introduction
    puts "\n\n<<< Welcome to the game of Blackjack >>>\n\n"
    puts "This is an game will test your skills against the greatest player of them all.\n\n"
    puts "The Dealer!"
  end
end
