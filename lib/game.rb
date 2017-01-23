module Blackjack
  class Game
    attr_accessor :dealer, :player

    def initialize
      @dealer = Dealer.new(self)
      @player = Player.new
    end

    def start
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
      evaluate_hand
    end

    def stand
      dealer.end_game
      finish_game
      
      return :quit
    end
  end
end
