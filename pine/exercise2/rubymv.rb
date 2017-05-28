require 'fileutils'
photos = Dir['/home/dnelson/Documents/itmd-x13-weekly/pine/exercise2/photosfolder/*.pic']
counter = 1
userfolder = './testmv'
photos.each do |photo|
  puts "before the call"
  FileUtils.mv photo "#{userfolder}/photo#{counter}.pic"
  counter += 1
end
