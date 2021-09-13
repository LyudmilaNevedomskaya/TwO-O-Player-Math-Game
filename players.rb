class Players

  attr_accessor :name, :lives

  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end

  def is_alive?
    @lives > 3
  end

end