module TotalsHelper
  def last_card
    hand.last.value
  end

  def total
    hand.empty? ? 0 : hand.map(&:value).reduce(:+)
  end

  def total_hand_invalid?
    total > 21
  end

  def show_hand(operator=nil)
    hand.map(&:value).join(" #{operator} ")
  end

  def show_output(values=nil)
    puts "Dealer: #{values}"
  end

  def show_game_outcome(winner)
    show_header(winner)
    show_hands
    return :quit
  end

  def show_header(winner)
    puts "#{winner} Wins!\n\n"
  end

  def show_hands
    puts "Player hand: #{player.show_hand("+")} = #{player.total}"
    puts "Dealer hand: #{dealer.show_hand("+")} = #{dealer.total} "
  end
end
