filename = "tesing123testing"
testing = "hello motto2 \n" + filename + "is the filename\n"
File.open filename,'w' do |f|
  f.write testing
end
input = File.read filename

puts input
puts (input == testing)
