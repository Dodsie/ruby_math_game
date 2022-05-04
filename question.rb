Question

class Question
  def initialize
    @num1 = rand(-10..10)
    @num2 = rand(-10..10)
    @result = @num1 + @num2
  end

  def ask_player(name)
    puts "#{name}: What is the sum of #{@num1} plus #{@num2} equal?"
  end

  def check?(answer)
    @sum == answer
  end
end