module Ruleset
  def calculate_winner(player_total=nil, dealer_total=nil)    
    
    winner = nil
    if player_total > 21                                          # 1. Player is bust
      winner = :dealer
      finish_game(winner)
    elsif dealer_total > 21                                       # 2. Dealer is bust
      winner = :player
    elsif dealer_total <= 21 && player_total < dealer_total       # 3. Player total is lower than Dealer
      winner = :dealer
    elsif player_total <= 21 && dealer_total < player_total       # 4. Dealer total is lower than Player
      winner = :player
    elsif dealer_total == player_total                            # 5. Dealer total equals Player total. 
      winner = :dealer
    end
    winner
  end
  
  def finish_game(winner)
    display_header_for(winner)
    show_hands
    return :quit
  end
  
  def display_header_for(winner)
    puts "#{winner} Wins!\n\n"
  end

  def show_hands
    puts "Player hand: #{player.show_hand("+")} = #{player.total}"
    puts "Dealer hand: #{dealer.show_hand("+")} = #{dealer.total} "
  end

  def evaluate_hand
    if player.total > 21
      show_winner("Dealer")
      show_hands
      return :quit
    end
  end
end
