puts "What is the source file?"

source_file = gets.chomp

puts "What would you like to call your destination file?"

destin_file = gets.chomp

source_file_contents = IO.read(source_file)

IO.write(destin_file, source_file_contents)

