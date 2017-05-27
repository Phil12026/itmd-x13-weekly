x = 0
until x = 200
  file.open "phtoto" + x + ".pic", 'w' do |make|
    contents = "This file represents photo " + x + " for the assignment"
    f.write contents
  end
  x += 1
end
