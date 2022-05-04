class Questions
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @result = @num1 + @num2
  end

  def ask_player()
    "What is the sum of #{@num1} plus #{@num2} equal?"
  end

  def check?(answer)
    answer.to_i == @result
  end
end