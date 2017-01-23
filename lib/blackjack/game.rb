module Blackjack
  class Game
    include GameRules
    include TotalsHelper

    attr_accessor :dealer, :player

    def initialize
      @player = Player.new
      @dealer = Dealer.new(self)
    end

    def run
      dealer.new_game

      result = nil
      until result == :quit
        action, args = get_action
        result = do_action( action, args )
      end
    end

    def get_action
      action = nil
      # Keep asking for user input until we get a valid action
      until Player.actions.include?(action)
        puts "Actions " + Player.actions.join(", ") if action
        print "Player: "
        user_response = gets.chomp
        args = user_response.downcase.strip.split(' ')
        action = args.shift
      end
      return action, args
    end

    def do_action(action, args=[])
      case action
      when 'hit'   then hit
      when 'stand' then stand
      when 'quit'  then return :quit
    else
      puts 'I dont understand that command'
      end
    end

    def hit
      dealer.hit(player)
      show_output(player.last_card)

      define_winner(player.total, dealer.total)
    end

    def stand
      dealer.end_game
      winner = define_winner(player.total, dealer.total)
      show_game_outcome(winner)
    end
  end
end
