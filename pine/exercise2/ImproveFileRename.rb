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

def whereToStore photos
  puts "What folder do you want to store the photos in?"
  userfolder = gets.chomp
  check = Dir.exist? "/home/dnelson/Pictures#{userfolder}" 
end

photos = grabPhotos
countPhotos photos
whereToStore

