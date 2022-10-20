# Question class
=begin
questions are generated for each turn by randomly picking two numbers between 1 and 20 to be added together. The answer to the question must match the answer given by the player, or else the player will lose one life.
  
  relevant information
    is it a new turn?

  What above methods need in order to be initialized?
    needs to be initialized by a player winning or losing their turn

  What public methods will be defined on them?
  if new turn, generate a new question

  this class(es) will contain user I/O.

note: doesnt keep track of whose turn it is
=end
class Question
  def initialize
  end
  print "What is #{number1} + #{number2}?"
  @player_answer = gets.chomp
end