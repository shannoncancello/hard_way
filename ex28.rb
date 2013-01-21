something = "I dunno"

puts true and true
puts "I thought it would be true 3"

puts false and true
puts "I thought it would be false 6"

puts 1 == 1 and 2 == 1
puts "I thought it would be false 9"

puts "test" == "test"
puts "I thought it would be true 12"

puts 1 == 1 or 2 != 1
puts "I thought it would be true 15"

puts true and 1 == 1
puts "I thought it would be true 18"

puts false and 0 != 0
puts "I thought it would be false 21"

puts true or 1 == 1
puts "I thought it would be true 24"

puts "test" == "testing"
puts "I thought it would be false 27"

puts 1 != 0 and 2 == 1
puts "I thought it would be false 30"

puts "test" != "testing"
puts "I thought it would be true 33"

puts "test" == 1
puts "I thought it would be false 36"

puts (not (true and false))
puts "I thought it would be true 39"

puts (not (1 == 1 and 0 != 1))
puts "I thought it would be false 42"

puts (not (10 == 1 or 1000 == 1000))
puts "I thought it would be false 45"

puts (not (1 != 10 or 3 == 4))
puts "I thought it would be false 48"

puts (not ("testing" == "testing" and "Zed" == "Cool Guy"))
puts "I thought it would be true 51"

puts (1 == 1 and not ("testing" == 1 or 1 == 0))
puts "I thought it would be true 54"

puts ("chunky" == "bacon" and not (3 == 4 or 3 == 3))
puts "I thought it would be false 57"

puts (3 == 3 and not ("testing" == "testing" or "Ruby" == "Fun"))
puts "I thought it would be false 60"

# 9, 30 wtf?