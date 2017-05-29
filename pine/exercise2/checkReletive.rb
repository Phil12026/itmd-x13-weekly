check = Dir.exist? "~/Pictures"
puts check.to_s

Dir.chdir '~/'
puts Dir.pwd
