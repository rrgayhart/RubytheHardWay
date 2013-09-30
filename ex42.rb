## Animal is-a object look the extra credit
class Animal
end

## is-a Animal
class Dog < Animal
	def initialize(name)
		## Animal has-a name
		@name = name
	end
end

## is-a Animal
class Cat < Animal
	
	def initialize(name)
		## Cat has-a name
		@name = name
	end
end

##
class Person 

	def initialize(name)
		## has-a name
		@name = name
		
		## Person has-a pet
		@pet = nil
	end
	
	attr_accessor :pet
end

## Employee is_a Person
class Employee < Person
	
	def initialize(name, salary)
		## has_a name (from Person)
		super(name)
		## has_a salary
		@salary = salary
	end

end

## is_a fish
class Fish
end

## is_a fish
class Salmon < Fish
end

## is_a fish
class Halibut < Fish
end

## rover is-a dog
rover = Dog.new("Rover")

## satan is-a cat
satan = Cat.new("Satan")

## mary is-a person
mary = Person.new("Mary")

## mary is-a person that has-a pet that is_a cat
mary.pet = satan
		
## frank is-a employee and is_a person that has_a name and salary
frank = Employee.new("Frank", 120000)

## Frank is_a person that has_a pet that is_a dog
frank.pet = rover
		
## flipper is_a fish
flipper = Fish.new()

## crouse is_a salmon which is_a fish
crouse = Salmon.new()

## harry is_a Halibut which is_a Fish
harry = Halibut.new()		
		
		
		










