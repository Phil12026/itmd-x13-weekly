x = 0
until x == 200
  File.open "phtoto" + x.to_s + ".pic",'w' do |make|
    contents = "This file represents photo " + x.to_s + " for the assignment"
    f.write contents
  end
  x += 1
end
