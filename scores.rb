# calculates score for each player, and returns a hash including the scores and a score message
class Scores
  attr_reader :p1_score
  attr_reader :p2_score
  attr_reader :display_scores
  
  def initialize(current_player)
    @p1_score = 3
    @p2_score = 3
    @display_scores = "P1: #{@p1_score}/3 vs. P2: #{@p2_score}/3"
  end

  def decrease_score(current_player)
    if current_player == 1
      @p1_score -= 1
    else
      @p2_score -= 1
    end
  end
end