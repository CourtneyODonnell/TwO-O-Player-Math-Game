class Player
  # class variable
  @@number_of_players = 0

  # instance variables to read from outside the class
  attr_reader :score, :short, :long

  #initialize method when new instance of class is created
  def initialize
    # class variable
    @@number_of_players +=1

    # shortened version of player name
    self.short = "P#{@@number_of_players}"
    # long version of player name
    self.long = "Player#{@@number_of_players}"
    # score of player
    self.score = 3
  end 
  
  # lose a point method
  def lose_points
    self.score -= 1
  end

  # final score method to display final score -- possibly more concise was to do this?
  def final_score
    "#{score}/3"
  end
  
  # protected method to respond to instance variables (write) (see README for more information / link to article)
  protected
  attr_writer :score, :short, :long
end