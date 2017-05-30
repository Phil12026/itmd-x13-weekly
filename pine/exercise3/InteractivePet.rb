#Writen by Dean Nelson for ITMD 513 Summer 2017
class dog
  def initialize name
    @name = name
    @energy = 10
    @stomach = 10
    @intestine = 0
    genderGenerator
	puts "You are now the proud oownder of a #{@gender} dog named #{@name}!"
	interface
  end

  def call
      puts "Come here #{@affectionatenickname}! Come here #{@name}"
	  puts "#{@name} walks over to you with #{@pronoun} touge hanging out of #{@pronoun} mouth."
	  puts "You spend some time playing with #{@name}"
	  timeMarchesOn
  end

  def feed
    puts "You feed #{@name} some food."
    puts "#{@name} hungerly eats the food."
    @stomach = 10
	timeMarchesOn
  end

  def sleep
    puts "you put #{@name} to sleep in their ben."
    if hungery?
      puts "#{@name} wakes up and is starving! You need to feed #{@pronoun}"
    elsif needsToGO?
      puts "#{@name} wakes up and needs to go to the bathroom quick walk #{@pronoun}!"
    elsif @energy = 10
      puts "#{@name} wakes up full rested and looks at you expectantly."
    end
    @energy += 1
    timeMarchesOn
   end

  def walk
    puts "You go take #{@name} our for a walk so #{@pronoun} can go to the bathroom."
    puts "#{@pronoun} is so excited to go for walk, #{@pronoun} looks so happy."
	timeMarchesOn
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
	timeMarchesOn
  end

  def interface
    choice = 0
	while choice !=7
	  puts "What do you want to do with #{@name}?"
	  puts "Enter 1 to feed #{@name}."
	  puts "Enter 2 to call #{@name}."
	  puts "Enter 3 to put #{@name} to sleep."
	  puts "Enter 4 to walk #{@name}."
	  puts "Enter 5 to take #{@name} to the park."
	  puts "Enter 6 to put #{@name} to sleep."
	  puts "Enter 7 to exit the program."
	  
	  if choice = 1
	    feed
      elsif choice = 2
	    call
      elsif choice = 3
	    sleep
	  elsif choice = 4
	    walk
	  elsif choice = 5
	    park
	  elsif choice = 6
	    sleep
	  elsif choice = 7
	    puts "Your time with #{@name} is done and it is with a heavy heart,"
		puts "that your return #{@name} to the animal shelter."
		puts "As you walk home even though your time with #{@name} was brief,"
		puts "you can't help but miss #{@pronoun} walking next to you"
		puts "with their tounge hanging out of their mouth and looking up ad you adoringly."
		puts "You contemplate adopting #{@name} for good next time."
	  end
	end
  end

  private
  
  def genderGenerator
    genderDecider = rand(1)
    if genderDecider == 0
      @gender = "Female"
      @pronoun = "her"
      @afffectionatenickname = "girl"
    elsif genderDecider == 1
      @gender = "Male"
      @pronoun = "him"
      @affectionatenickname = "boy"
    end
  end

  def timeMarchesOn
    if @stomach > 0
      @stomach -= 1
      intestine += 1
    end
  end
  
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
