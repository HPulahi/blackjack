##### Gamesys coding challenge
#
# Launch this ruby file to get started
APP_ROOT = File.dirname(__FILE__)

$:.unshift(File.join(APP_ROOT, 'lib') )
require 'blackjack'

blackjack = Blackjack.new
blackjack.start_game!
