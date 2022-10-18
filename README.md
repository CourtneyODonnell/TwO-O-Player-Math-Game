# GAME
  Players will take turns answering randomly generated math (addition) questions. Each time a player answers a question incorrectly, they lose one life. If the player answers a question correctly, they do not lose any lives.

 relevant information
    is it this player's turn?
    unique question generated per player per turn

  #What above methods need in order to be initialized?
    need to know if player 1 or 2 is active
    need to know if a new question needs to be generated
    whether or not the player won or lost that turn in order to determine who the question belongs to

  #i think this class will contain the game loop (where each instance of the loop is the other players turn).
  no user io


# question
  questions are generated for each turn by randomly picking two numbers between 1 and 20 to be added together. The answer to the question must match the answer given by the player, or else the player will lose one life.
  
  relevant information
    is it a new turn?

  What above methods need in order to be initialized?
    needs to be initialized by a player winning or losing their turn

  What public methods will be defined on them?
  if new turn, generate a new question

  this class(es) will contain user I/O.

note: doesnt keep track of whose turn it is


# answers will need to link to questions
  answers are input by the player whose turn it is. If the input answer matches the correct answer, the player keeps their lives. If the input answer is wrong, the player will lose one life from their total of 3.

  relevant information
    does player answer match correct answer?
  
  What above methods need in order to be initialized?
    correct answer - from questions
    player answer
    

  this class(es) will contain user I/O.
new instance of answer when answered by player



# Player store answers and lives
  displays at the bottom of the "turn". if a player gets the input answer incorrect, one life will be subtracted from numerator. If the player's lives reach 0, the player loses the game and the other player wins.

  relevant information
    3 total lives
    how many lives remaining (updated after each turn)
    Did the player win or lose?
    does the player have more than 0 lives left?

    What above methods need in order to be initialized?
      win or loss information from the turn
      if life score is 0, game over
    no user io