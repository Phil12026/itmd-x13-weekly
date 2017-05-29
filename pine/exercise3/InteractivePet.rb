class dog
  def initialize name
    @name = name
    @energy = 10
    @stomach = 10
    @intestine = 0
    genderGenerator
  end

  def genderGenerator
    genderDecider = rand(1)
    if genderDecider == 0
      @gender = "Female"
      @afffectionatenickname = "girl"
    elsif genderDecider == 1
      @gender = "Male"
      @afffectionatenickname = "boy"
    end
  end

  def call
    if @gender == "Male"
      puts "Come here boy! Come here #{@name}"
    elsif @gender == "Female"
      puts "Come here girl! Come here #{@name}"
    end
  end

  def feed
    puts "You feed #{@name} some food."
    puts "#{@name} hungerly eats some food."
  end

  def park
    puts "You take #{@name} to the neighborhood dog park."
    puts "Do you want to "

  end

  def playBall
    if @gender == "Male"
      puts "You toss the ball to #{@name} and he chases after it."
    elsif @gender == "Female"
      puts "You toss the ball to #{@name} and she chases after it."
    end
    @energy -= 1
  end

end
