class Questions

  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2
    @display = "What does #{@num1} + #{@num2} equal???"
  end
  
end