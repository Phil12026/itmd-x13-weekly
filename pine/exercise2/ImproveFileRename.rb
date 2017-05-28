require 'yaml'

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
end

def whereToStore 
  puts "What folder do you want to store the photos in?"
  userfolder = gets.chomp
  check = Dir.exist? "/home/dnelson/Pictures/#{userfolder}" 
  if check == false
    Dir.mkdir userfolder
  end
  "/home/dnelson/Pictures/#{userfolder}"
end

def movePhotos photos userfolder
  counter = 1
  while true
    puts "Do you want to cut or copy the photos?"
    puts "Enter cut to delete original, and copy to save the original."
    cutOrCopy = gets.chomp.upcase
    if cutOrCopy == "CUT"
      photos.each do |photo|    
        FileUtils.mv photo "#{userfolder}/photo#{counter}.pic"
        counter += 1
      end
    puts "all photos have been moved ot the folder you directed"
    puts "so the original file no longer exists freeing up space."
    break
    elsif cutOrCopy == "COPY"
      photos.each do |photo|
        FileUtils.cp photo "#{userfolder}/photo#{counter}.pic"
        counter += 1
      end
      puts "All photos have been copied to the folder you directed"
      puts "without deleating the original copy."
      break
    else
      puts "please enter cut or copy"
    end
  end
end

photos = Dir['/home/dnelson/Documents/itmd-x13-weekly/pine/exercise2/photosfolder/*.pic']
countPhotos photos
whereToStore
movePhotos photos whereToStore
