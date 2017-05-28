require 'yaml'

def grabPhotos
  Dir.chdir './photosfolder'
  Dir['/home/dnelson/Documents/itmd-x13-weekly/pine/exercise2/photosfolder/*.pic']
end

def countPhotos photos
  if photos.count == 0
    puts "There are no Photos in the directory."
  elsif photos.count < 15
    puts "Photos in folder are as follows."
    photos.each do |absolutePath|
      puts absolutePath
    end
  else
    puts "There are #{photos.count} photos."
  end
  photos.count
end

def whereToStore 
  puts "What folder do you want to store the photos in?"
  userfolder = gets.chomp
  check = Dir.exist? "/home/dnelson/Pictures/#{userfolder}" 
  if check == false
    Dir.mkdir userfolder
  end
  userfolder
end

def movePhotos photos userfolder
  while true
    puts "Do you want to cut or copy the photos?"
    puts "Enter cut to delete original, and copy to save the original."
    cutOrCopy = gets.chomp.upcase
    if cutOrCopy == "CUT"
      FileUtils.mv 
    elsif
    
    end
  end
end

photos = grabPhotos
countPhotos photos
whereToStore
movePhotos photos whereToStore
