class Questions

  attr_accessor :answer, :display

  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @display = "What does #{@num1} + #{@num2} equal???"
    @answer = @num1 + @num2
  end

end
