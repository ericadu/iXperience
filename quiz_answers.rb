class Fish
  def initialize(color, name, speed)
    @color = color
    @name = name
    @speed = speed
    @food = []
  end

  def get_speed
    if @speed > 20
      "This fish swims super fast!"
    else
      "This fish is kinda slow."
    end
  end

end

class Shark < Fish
  def binge_eat(food)
    food.each do |fish|
      self.eat(fish)
    end
  end

  def eat(fish)
    @food << fish
  end

  def what_i_ate
    "I've eaten #{@food}!"
  end
end

nemo = Fish.new("orange", "Nemo", 10)
puts nemo.get_speed

dory = Fish.new("blue", "Dory", 15)
marlin = Fish.new("orange", "Marlin", 18)

bruce = Shark.new("gray", "Bruce", 40)
bruce.binge_eat([nemo, dory, marlin])
puts bruce.what_i_ate