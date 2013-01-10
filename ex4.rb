cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
#100 - 30
cars_not_driven = cars - drivers
#You can only have as many cars as there are people to drive them
cars_driven = drivers
#Each car that is driven has 4 seats
carpool_capacity = cars_driven * space_in_a_car
#Take the full amount of passengers and distribute them evenly
#Between the driven cars
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

#He was given an error the first time he wrote it because in line 13
#He added in an extra "invisible space" to his variable
#car_pool_capacity instead of carpool_capacity
#The space_in_a_car was written with a decimal to account for
#The remainder possibly being a decimal
#The equation was for an average