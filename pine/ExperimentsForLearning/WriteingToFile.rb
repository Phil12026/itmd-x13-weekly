require 'yaml'

filename = "tesing123testing"
testing = "hello motto2 \n" + filename + "is the filename\n"
File.open filename,'w' do |f|
  f.write testing
end
input = File.read filename

puts input
puts (input == testing)

puts "yaml part now"
array[]
array.push "The author of this book,"
array.push "tries WAY to hard to be funny,"
array.push "and it ends up blowing up in his face."
puts array.to_s

