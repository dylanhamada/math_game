# get user input and return it
class Input
  # prompt user for input and store it in a variable
  def initialize
    print ">"
    @user_input = gets.chomp
  end
  
  # return an integer
  def input_number
    answer = @user_input.to_i
  end
end