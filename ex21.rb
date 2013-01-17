def add(a, b)
	puts "ADDING #{a} + #{b}"
	a + b
end

def subtract(a, b)
	puts "SUBTRACTING #{a} - #{b}"
	a - b
end

def multiply(a, b)
	puts "MULTIPLYING #{a} * #{b}"
	a * b
end

def divide(a, b)
	puts "DIVIDING #{a} / #{b}"
	a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} Can you do it by hand?"

#iq = 100 / 2 which is 50, you now have (50, 2) to use in your divide method
#weight = 90 * 180 (180), you now have (180, 25(from the iq division)) to use
#height = 78 - 4 (74), now you have (74, 4500) to use in subtract method
#age = 30 + 5 (35), now you add your age to -4426 and result 