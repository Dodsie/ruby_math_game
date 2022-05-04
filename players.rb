class Players
  def initialize(n)
  @name = n
  @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_dead?
    @lives == 0
  end
end


      