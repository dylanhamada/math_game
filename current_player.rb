# set current player and return it
class CurrentPlayer 
  attr_reader :current_player

  def initialize
    @current_player = 1
  end

  def toggle_player
    if @current_player == 1
      @current_player = 2
    else
      @current_player = 1
    end
  end
end