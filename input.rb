# get user input and return it
class Input
  attr_reader :user_answer
  
  # prompt user for input and store it in a variable
  def initialize
    print ">"
    @user_input = gets.chomp
    @user_answer = @user_input.to_i
  end
end