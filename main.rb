require_relative "current_player"
require_relative "question"
require_relative "input"
require_relative "evaluate"
require_relative "scores"

new_eval = Evaluate.new(1, 1, 1)
puts new_eval.eval_message