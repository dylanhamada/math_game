# return an addition question and answer
class Question
  # initialize variables
  def initialize(player)
    # current player
    @current_player = player
    # two numbers
    @numOne = rand(1..20)
    @numTwo = rand(1..20)
  end

  # return a hash consisting of a question string and a number answer
  def question_answer 
    {
      question: "Player #{@current_player}: What does #{@numOne} plus #{@numTwo} equal?",
      answer: @numOne + @numTwo
    }
  end
end