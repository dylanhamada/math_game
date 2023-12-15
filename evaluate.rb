# evaluate user input against calculated answer, returns a string and boolean
class Evaluate
  attr_reader :is_correct
  
  def initialize(input, answer, player)
    @input = input
    @answer = answer
    @player = player
    @is_correct = @input == @answer
  end
  
  # return a string message of whether the provided answer is correct
  def eval_message
    eval = @is_correct ? "YES! You are correct." : "Seriously? No!"
    
    message = "Player #{@player}: #{eval}"
  end
end