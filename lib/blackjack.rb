require 'blackjack/utils/totals_helper'
require 'blackjack/utils/game_rules'
require 'blackjack/player'
require 'blackjack/card'
require 'blackjack/dealer'
require 'blackjack/game'

module Blackjack
  raise "Cannot require Blackjack, unsupported engine '#{RUBY_ENGINE}'" unless RUBY_ENGINE == "ruby"
end
