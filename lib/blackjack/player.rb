class Player
  attr_accessor :hand

  def initialize
    self.hand = []
  end

  def reveal
    hand.map(&:value).join(" ")
  end

  def show
    hand.map(&:value).join(" + ")
  end

  def total
    hand.empty? ? 0 : hand.map(&:value).reduce(:+)
  end

  def total_hand_invalid?
    total > 21
  end

end
