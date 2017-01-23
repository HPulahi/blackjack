module GameRules
  def define_winner(player_total=nil, dealer_total=nil)
    winner = nil
    if player_total > 21                                          # 1. Player is bust
      winner = :dealer
      show_game_outcome(winner)
      return :quit
    elsif dealer_total > 21                                       # 2. Dealer is bust
      winner = :player
    elsif dealer_total <= 21 && player_total < dealer_total       # 3. Player total is lower than Dealer
      winner = :dealer
    elsif player_total <= 21 && dealer_total < player_total       # 4. Dealer total is lower than Player
      winner = :player
    elsif dealer_total == player_total                            # 5. Dealer total equals Player total.
      winner = :dealer
    end
    return winner
  end
end
