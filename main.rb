require_relative "current_player"
require_relative "question"
require_relative "input"
require_relative "evaluate"
require_relative "scores"

# declare global variables for active player and current score
active_player = CurrentPlayer.new
current_score = Scores.new(1)

# while both scores are above zero
while current_score.p1_score > 0 && current_score.p2_score > 0
  # print new turn
  puts "----- NEW TURN -----"
  
  # generate question
  new_question = Question.new(active_player.current_player)
  puts new_question.question_message
  
  # get player answer from terminal input
  player_answer = Input.new.user_answer
  
  # evaluate answer
  new_eval = Evaluate.new(player_answer, new_question.answer, active_player.current_player)
  
  # update score and display proper evaluation message
  if !new_eval.is_correct
    current_score.decrease_score(active_player.current_player)
  end

  # print evaluation message and current score
  puts new_eval.eval_message
  puts current_score.display_scores
  
  # change current player
  active_player.toggle_player
end

# print winning player and score
puts "Player #{active_player.current_player} wins with a score of #{active_player.current_player == 1 ? current_score.p1_score : current_score.p2_score}/3"

# print game over and goodbye
puts "----- GAME OVER -----"
puts "Good bye!"