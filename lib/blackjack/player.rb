class Player
  include AccountUtilities
  
  attr_accessor :hand

  def initialize
    self.hand = []
  end
end
