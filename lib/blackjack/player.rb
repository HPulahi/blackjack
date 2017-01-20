class Player
  attr_accessor :hand

  def initialize
    self.hand = []
  end

  def reveal
    hand.map(&:value).join(" ")
  end

  def total
    hand.map(&:value).reduce(:+)
  end

end
