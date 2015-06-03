require_relative 'car'
class Race
  attr_reader :cars, :winner, :loser
  
  def initialize
    @cars = [ Car.new, Car.new ]
    prng = Random.new
    @cars[0].accelerate(prng.rand(100))
    @cars[1].accelerate(prng.rand(100))
  end

  def winner
    if (@cars[0].speed > @cars[1].speed)
      @loser = @cars[1]
      @cars[0]
    else
      @loser = @cars[0]
      @cars[1]
    end
  end

  def loser
    if (@cars[0].speed < @cars[1].speed)
      @winner = @cars[1]
      @cars[0]
    else
      @winner = @cars[0]
      @cars[1]
    end
  end
end
