# evaluate user input against calculated answer, returns a string and boolean
class Evaluate
  def initialize(input, answer, player)
    @input = input
    @answer = answer
    @player = player
  end
  
  # return a string and boolean
  def evaluation
    correct = @input == @answer
    message = correct ? "YES! You are correct." : "Seriously? No!"
    
    {
      is_correct: correct,
      evaluation_message: "Player #{@player}: #{message}"
    }
  end
end