require_relative "current_player"
require_relative "question"
require_relative "input"
require_relative "evaluate"
require_relative "scores"

active_player = CurrentPlayer.new
current_score = Scores.new(1)

# while both scores are above zero
# 

while current_score.p1_score > -1 && current_score.p2_score > -1
  puts current_score.display_scores
  current_score.decrease_score(1)
end