# return an addition question and answer
class Question
  # initialize variables
  def initialize
    # two numbers
    @numOne = rand(1..20)
    @numTwo = rand(1..20)
  end

  # return a hash consisting of a question string and a number answer
  def question_answer 
    {
      question: "What does #{@numOne} plus #{@numTwo} equal?",
      answer: @numOne + @numTwo
    }
  end
end

new_question = Question.new()
puts new_question.question_answer