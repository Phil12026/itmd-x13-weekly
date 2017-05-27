require 'yaml'

Dir.chdir './photosfolder'
photos = Dir['/home/dnelson/Documents/itmd-x13-weekly/pine/exercise2/photosfolder/*.pic']
puts "Give a name for this group of photos."
groupname = gets.chomp

puts "Photos in folder are as follows."
if photos.count > 15
  puts "there are " + photos.count.to_s + " number of photos."
else
  photos.each do |absolutePath|
    puts absolutePath
  end
end
