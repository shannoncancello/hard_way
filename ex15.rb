filename = ARGV.first

prompt = "> "
txt = File.open(filename)
#Tells what filename I entered
puts "Here's your file: #{filename}"
#calls the read command on the txt file I have passed in
puts txt.read()
txt.close()

puts "I'll also ask you to type it again:"
#Prints > asking me to enter the txt file location again
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)
#calls the read method on the second location I entered
#the second location should be identical to the first
puts txt_again.read()
txt_again.close()