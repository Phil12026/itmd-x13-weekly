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
array= []
array.push "The author of this book,"
array.push "tries WAY to hard to be funny,"
array.push "and it ends up blowing up in his face."
puts array.to_s

yaml1 = array.to_yaml
puts "the next is in yaml format"
puts yaml1

File.open 'test2', 'w' do |f|
  f.write yaml1
end

puts ""
puts "below is reading"
puts ""

input = File.read 'test2'
yaml2 = YAML::load input
puts yaml2
puts input
puts ""
puts "Below should be array."
puts ""
puts yaml2.to_s
