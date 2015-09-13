filename = ARGV[0]
file = File.open(filename)
puts file
puts '----------'
text = file.read
puts text
file.close
