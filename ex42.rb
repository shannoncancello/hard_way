##  Animal is-a object look at the extra credit
class Animal
end

## Dog is an Animal
class Dog < Animal

	def initialize(name)
		## Dog has-a name
		@name = name
	end
end

## Cat is an Animal
class Cat < Animal

	def initialize(name)
		## Cat has-a name
		@name = name
	end
end

## Person is-a object
class Person

	def initialize(name)
		## Person has-a name
		@name = name

		## Person has-a pet of some kind
		@pet = nil
	end

	attr_accessor :pet
end

## Employee is-a Person
class Employee < Person

	def initialize(name, salary)
		## Employee has-a name and salary
		super(name)
		## Employee inherits it's name attribute from Person
		@salary = salary
	end

end

## Fish is-a class/object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is a-Person
mary = Person.new("Mary")

## mary has-a pet cat satan
mary.pet = satan

## frank has-a name and salary
frank = Employee.new("Frank", 120000)

## frank has-a pet dog rover
frank.pet = rover

## flipper is-a fish
flipper = Fish.new()

## crouse is-a salmon
crouse = Salmon.new()

## harry is-a halibut
harry = Halibut.new()