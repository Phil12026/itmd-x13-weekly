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
      @pronoun = "her"
      @afffectionatenickname = "girl"
    elsif genderDecider == 1
      @gender = "Male"
      @pronoun = "him"
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
    puts "#{@name} hungerly eats the food."
    @stomach = 10
  end

  def sleep
    puts "you put #{@name} to sleep in their ben."
    if hungery?
      puts "#{@name} woke up and is starving! You need to feed #{@pronoun}"
    end
    timeMarchesOn
    
  end

  def timeMarchesOn
    if @stomach > 0
      @stomach -= 1
      intestine += 1
    end
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
      puts "#{@name} slowly walks home, to tired to run with you like normal."
    else
      puts "After a fun time at the park you and #{@name} run home together."
      @energy -= 1
    end
  end


  private
  def playBall
    puts "You toss the ball to #{@name} and #{@pronoun} chases after it."
    @energy -= 1
  end

  def playStick
    puts "You toss the stick to #{@name} and #{@pronoun} chases after it."
    @energy -= 1
  end

  def playFrizbee
    puts "You toss the frizbee to #{@name} and #{@pronoun} chases after it."
    @energy -= 1
  end

  def tired?
    @energy <= 2
  end

  def hungry?
    @stomach <= 2
  end

  def needsToGo?
   @intestine >= 8
  end
end
