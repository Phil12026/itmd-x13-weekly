# Improved Ask Method form chapter 9

def ask question
  while true
    puts question
    answer = gets.chomp.upcase
    if answer == "YES" || answer == "NO"
      break
    else
      puts "please enter a yes or no answer"
    end
  end
  answer
end 

def questionnaire
  answers = []
  answers.push ask "Do you like loseing weight or maintaining a healthy weight?"
  answers.push ask "Do you like to eat tasty food?"
  answers.push ask "Do you wish food could taste good and be healthy?"
  answers.push ask "Do you wish your friends would stop bugging you to lose weight?"
  
  x = true
  answers.each do |answer|
    if answer == "NO"
      x = false
    end
  end
  
  if x == true
    puts "Eat fruit!"
  else
    puts "You're weird."
  end
  answers.to_s
end

responses = []
continue = "YES"
while continue == "YES"
  responses.push questionnaire
  continue = ask  "Do you want to run the questionnaire again?"
end
puts responses
