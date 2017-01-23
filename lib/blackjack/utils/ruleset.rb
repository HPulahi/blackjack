module Blackjack
  module Ruleset
    def evaluate_hand
      if player.total > 21
        show_winner("Dealer")
        show_hands
        return :quit
      end
    end

    def display_winner
      if dealer.total > 21
        show_winner("Player")
      end

      if dealer.total <= 21 && player.total < dealer.total
        show_winner("Dealer")
      end

      if player.total <= 21 && dealer.total < player.total
        show_winner("Player")
      end

      if player.total == dealer.total
        show_winner("Dealer")
      end
    end

    def show_winner(player_or_dealer)
      puts "#{player_or_dealer} Wins!\n\n"
    end

    def show_hands
      puts "Player hand: #{player.show} = #{player.total}"
      puts "Dealer hand: #{dealer.show} = #{dealer.total} "
    end

    def finsih_game
      display_winner
      show_hands
    end
  end
end
