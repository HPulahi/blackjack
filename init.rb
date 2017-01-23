##### Gamesys coding challenge
#
# Launch this ruby file to get started
APP_ROOT = File.dirname(__FILE__)
$:.unshift(File.join(APP_ROOT, 'lib') )

require 'game'

blackjack = Blackjack::Game.new
blackjack.start

#blackjack = Blackjack.new