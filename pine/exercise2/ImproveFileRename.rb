require 'fileutils'

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

def findOpenName name
  version = 2
  check = File.exist? "#{name}#{version}.pic"
  while check == true
    version += 1
    check = File.exist? "#{name}#{version}.pic"
  end
  "#{name}#{version}.pic"
end

def whichFolder
  puts "What folder do you want to store the photos in?"
  userFolder = gets.chomp
  userFolder = "/home/dnelson/Pictures/#{userFolder}"
  check = Dir.exist? "#{userFolder}" 
  if check == false
    Dir.mkdir "#{userFolder}"
  end
  userFolder
end

def filesNameChanged files
  if files.count > 0
    puts "Some of the photos names where already taken so their name was changed to an open name."
    puts "Here is a list of the photos that had their names changed."
    files.each do |name|
      puts name
    end
  end
end

def movePhotos photos
  userFolder = whichFolder
  changedName = []
  counter = 1
  puts "Do you want to cut or copy the photos?"
  while true
    puts "Enter cut to delete original, and copy to save the original."
    cutOrCopy = gets.chomp.upcase
    if cutOrCopy == "CUT"
      photos.each do |photo|
        check = File.exist? "#{userFolder}/photo#{counter}.pic"
        if check == false
          FileUtils.mv photo, "#{userFolder}/photo#{counter}.pic"
        else
          openName = findOpenName "#{userFolder}/photo#{counter}_version"
          FileUtils.mv photo, "#{openName}"
          changedName.push openName
        end
        counter += 1
      end
      puts "all photos have been moved ot the folder you directed"
      puts "so the original file no longer exists freeing up space."
      break
    elsif cutOrCopy == "COPY"
      photos.each do |photo|
        check = File.exist? "#{userFolder}/photo#{counter}.pic"
        if check == false
          FileUtils.cp photo, "#{userFolder}/photo#{counter}.pic"
        else
          openName = findOpenName "#{userFolder}/photo#{counter}_version"
          FileUtils.cp photo, "#{openName}"
          changedName.push openName
        end
        counter += 1
      end
      puts "All photos have been copied to the folder you directed"
      puts "without deleating the original copy."
      break
    else
      puts "please enter cut or copy"
    end
  end
  filesNameChanged changedname
end

photos = Dir['/home/dnelson/Documents/itmd-x13-weekly/pine/exercise2/photosfolder/*.pic']
countPhotos photos
movePhotos photos
