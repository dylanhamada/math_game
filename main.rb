require_relative "current_player"
require_relative "question"
require_relative "input"
require_relative "evaluate"
require_relative "scores"

new_scores = Scores.new(1)
puts new_scores.player_scores
new_scores.decrease_score(1)
puts new_scores.player_scores