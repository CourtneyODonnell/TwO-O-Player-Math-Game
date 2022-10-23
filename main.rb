# require necessary files
require './question'
require './player'
require './game'

# assign player1 and player2 variables to new instances of Player class
player1 = Player.new
player2 = Player.new
# assign players variable to array of players (assigned above)
players = [player1, player2]

# assign game variable Game class with .new method
game = Game.new

# call game.start method with players as argument
game.start(players)