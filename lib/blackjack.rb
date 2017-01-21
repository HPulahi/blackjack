require 'blackjack/dealer'
require 'blackjack/player'

class Blackjack
  class Config
    @@actions = ['hit', 'stand', 'quit']
    def self.actions
      @@actions
    end
  end

  attr_accessor :dealer, :player

  def initialize
    self.dealer = Dealer.new(self)
    self.player = Player.new
  end

  def start_game!
    dealer.open_game

    result = nil
    until result == :quit
      action, args = get_action
      result = do_action( action, args )
    end
  end

  def show_hands
    puts "Player hand: "
  end

  def get_action
    action = nil
    until Blackjack::Config.actions.include?(action)
      puts "Actions " + Blackjack::Config.actions.join(", ") if action
      print "Player: "
      user_response = gets.chomp
      args = user_response.downcase.strip.split(' ')
      action = args.shift
   end
   return action, args
  end

  def do_action(action, args=[])
    case action
    when 'hit'
      dealer.hit(player) 
      if player.total > 21
        puts "Dealer Wins!\n\n"
        puts "Player hand: #{player.show} = #{player.total}"
        puts "Dealer hand: #{dealer.show} = #{dealer.total} "
        return :quit
      end
    when 'stand'
      until  dealer.total > 17
        dealer.deal_card_for(dealer)
      end
      if dealer.total > 21
        puts "Player Wins!\n\n"
      end

      if dealer.total <= 21 && player.total < dealer.total
        puts "Dealer Wins!\n\n"
      end

      if player.total <= 21 && dealer.total < player.total
        puts "Player Wins!\n\n"
      end

      if player.total == dealer.total
        puts "Dealer Wins!\n\n"
      end

      puts "Player hand: #{player.show} = #{player.total}"
      puts "Dealer hand: #{dealer.show} = #{dealer.total} "
      return :quit
    when 'quit'
      return :quit
    else 
      puts 'I dont understand that command'
    end
  end

end
