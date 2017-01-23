module TotalsHelper
  def show_hand(operator=nil)
    hand.map(&:value).join(" #{operator} ")
  end
  
  def last_card
    hand.last.value
  end

  def total
    hand.empty? ? 0 : hand.map(&:value).reduce(:+)
  end

  def total_hand_invalid?
    total > 21
  end

  def show_output(values=nil)
    puts "Dealer: #{values}"
  end
end
