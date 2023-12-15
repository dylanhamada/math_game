# calculates score for each player, and returns a hash including the scores and a score message
class Scores
  def initialize(current_player)
    @p1_score = 3
    @p2_score = 3
  end

  def decrease_score(current_player)
    if current_player == 1
      @p1_score -= 1
    else
      @p2_score -= 1
    end
  end

  def player_scores
    {
      p1_score: @p1_score,
      p2_score: @p2_score,
      score_message: "P1: #{@p1_score}/3 vs. P2: #{@p2_score}/3"
    }
  end
end