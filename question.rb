# return an addition question and answer
class Question
  # initialize variables
  def initialize(player)
    # current player
    @current_player = player
    # two numbers
    @numOne = rand(1..20)
    @numTwo = rand(1..20)
    @answer = nil
  end

  # return the answer
  def answer 
    @answer = @numOne + @numTwo
  end

  # return a question string
  def question_message
    "Player #{@current_player}: What does #{@numOne} plus #{@numTwo} equal?"
  end
end