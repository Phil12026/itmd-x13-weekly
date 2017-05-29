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
    choice = 0
    while choice != 4
      puts "How do you want to play wiht #{@name}?"
      puts "1 for ball, 2 for stick, 3 for frizbee, 4 to go back home."
      choice = gets.chomp
      if tired? == true
        puts "#{@name} just lays in front of you to tired to play right now."
      elsif tired? == false
        if choice == 1
          playBall
        elsif choice == 2
          playStick
        elsif choice == 3
          playFrizbee
        elsif choice == 4
        else
          puts "Please enter a number between 1 and 4 to select your decision."
        end
      end
    end
    if tired?
      puts "#{@name} slowly walks home, to tired to run with you."
    else
      puts "After a fun time at the park you and #{@name} run home together."
      @energy -= 1
    end
  end

  def playBall
    if @gender == "Male"
      puts "You toss the ball to #{@name} and he chases after it."
    elsif @gender == "Female"
      puts "You toss the ball to #{@name} and she chases after it."
    end
    @energy -= 1
  end

  def playstick
    if @gender == "Male"
      puts "You toss the stick to #{@name} and he chases after it."
    elsif @gender == "Female"
      puts "You toss the stick to #{@name} and she chases after it."
    end
    @energy -= 1
  end

  def playFrizbee
    if @gender == "Male"
      puts "You toss the frizbee to #{@name} and he chases after it."
    elsif @gender == "Female"
      puts "You toss the frizbee to #{@name} and she chases after it."
    end
    @energy -= 1
  end

  private
  def tired?
    @energy <= 2
  end

  def hungry?
    @stomach <= 2
  end

  def needsToGo?
   @intestine >= 8
end
