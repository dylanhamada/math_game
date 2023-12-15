# return an addition question and answer
class Question
  attr_reader :answer
  attr_reader :question_message
  
  # initialize variables
  def initialize(player)
    # current player
    @current_player = player
    # two numbers
    @numOne = rand(1..20)
    @numTwo = rand(1..20)
    @answer = @numOne + @numTwo
    @question_message = "Player #{@current_player}: What does #{@numOne} plus #{@numTwo} equal?"
  end
end