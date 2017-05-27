require 'yaml'

def grabPhotos
  Dir.chdir './photosfolder'
  photos = Dir['/home/dnelson/Documents/itmd-x13-weekly/pine/exercise2/photosfolder/*.pic']
  photos
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
    puts "there are " + photos.count.to_s + " photos."
  end
  photos.count
end

photos = grabPhotos
countPhotos photos

