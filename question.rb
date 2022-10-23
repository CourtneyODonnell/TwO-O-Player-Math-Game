class Question 
  # instance variables to read from outside the class
  attr_reader :number1, :number2
  
  # initialize method when new instance of class is created
  def initialize
    # each number to be added  is a random number between 1 and 20
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  # question method to be called for each new turn
  def questions
  "What is the value of #{number1} + #{number2}?"
  end

end