require 'yaml'

Dir.chdir './photosfolder'
photos = Dir['/home/dnelson/Documents/itmd-x13-weekly/pine/exercise2/photosfolder/*.pic']
puts "Give a name for this group of photos."
groupname = gets.chomp
puts photos.to_s
