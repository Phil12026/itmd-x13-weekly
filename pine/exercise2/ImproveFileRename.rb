require 'yaml'

Dir.chdir './photosfolder'
photos = Dir['/home/dnelson/Documents/itmd-x13-weekly/pine/exercise2/photosfolder/*.pic']
puts "Give a name for this group of photos."
groupname = gets.chomp

puts "Photos in folder are as follows."
if photos.count == 0
  puts "There are no Photos in the directory."
elsif photos.count < 15
  photos.each do |absolutePath|
    puts absolutePath
  end
else
  puts "there are " + photos.count.to_s + " photos."
end
