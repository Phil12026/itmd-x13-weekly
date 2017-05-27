filename = "tesing123testing"
testing = "hello motto2 \n" + filename + "is the filename\n"
File.open filename,'w' do |f|
  f.write testing
end

