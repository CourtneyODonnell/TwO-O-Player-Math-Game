# Tips
# DONE Create a new project folder and track it using git; publish it to GitHub
# DONE This project will contain multiple classes. Each class should be defined in its own rb file. You should not put any other code outside the class definition
# Define a main.rb file that will require all the other files
# Use gets.chomp to get input from users and puts for output
# Isolate your I/O logic to one or two classes. Don't allow all your classes to 
# interact (gets/puts) with the User
# Remember to build incrementally, writing small amounts of runnable code instead of 
# writing out a whole bunch of classes/methods that are not yet testable/runnable.
# Use puts, raise some_val.inspect, and byebug to help with debugging


require './game'
require './player'
require './question'
require '.answer'




=begin 
CLASS SYNTAX EXAMPLE:
class Person
  def initialize(name)
    @name = name
  end
end
=end