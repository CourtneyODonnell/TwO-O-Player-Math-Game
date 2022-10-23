require './player'
#greeting upon start
puts "_.-'-.__.-'-.__.-'-.__.-'-.__.-'-._\n _.-'-.__.-'-.__.-'-.__.-'-.__.-'-._\n >>> Welcome to the Math13375! <<< \n_.-'-.__.-'-.__.-'-.__.-'-.__.-'-._\n_.-'-.__.-'-.__.-'-.__.-'-.__.-'-._\n\n"

class Game
  # class variable
  @@player = 0;
  
  # start method take in players as an argument
  def start(players)
    puts "_.-'-.__.-'-.__.-'-.__.-'-.__.-'-._\n         New Turn - (#{players[0].short})     \n_.-'-.__.-'-.__.-'-.__.-'-.__.-'-._\n\n"
    question = Question.new
    puts "Q: #{question.questions}"
    print "#{players[0].long}'s Answer: "
    answer = $stdin.gets.chomp

    # conditional statement to check if player's answer is correct and puts corresponding message
    if answer.to_i == question.number1 + question.number2
      puts "\n--------------------\nResult... \n #{players[0].long} is correct!!!\n--------------------\n"
    else
      players[0].lose_points
      puts "\n--------------------\nResult... \n Incorrect!!! \n#{players[0].long} loses 1 life!\n"
    end
    
    # conditional statement to check if player's score is 0 and puts corresponding message with score
    if players[0].score == 0
      puts "\n_.-'-.__.-'-.__.-'-._ \n      Game Over      \n _.-'-.__.-'-.__.-'-._\n\n--------------------\n\n"
      puts "   #{players[1].long} wins!"
      puts "    Final Score    \n #{players[0].short}: #{players[0].final_score} | #{players[1].short}: #{players[1].final_score}\n\n"
    else
      # if player's score is not 0, the game continues
      players.reverse!
      # display current score at end of turn
      puts "\nScore... \n#{players[1].short}: #{players[1].final_score}  |  #{players[0].short}: #{players[0].final_score}\n--------------------\n\n"
      # call to start method to continue game
      start(players)
    end
  end
end

