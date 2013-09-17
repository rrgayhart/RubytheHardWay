# Section to Understand Yields
class Person 
    def initialize( name ) 
         @name = name
    end

    def do_with_name 
        yield( @name ) 
    end
end

person = Person.new("Oscar")
person.do_with_name {|string|
    puts "Hey, his name is #{string}"
}

days = ["monday", "tuesday", "wednesday", "thursday", "friday"]
puts days.select { |item| item.match /^t/ }
puts days.sort { |x,y| x.size <=> y.size }
puts "Okay that was yield"
#----------------------------------------------------
puts "Now let's try while"
def while_begin
i = 0
begin
	i += 1
	puts i
end while i < 10
end
puts while_begin

def plain_while
l = 0 
while l <10
	l += 1
	puts l
end
end
#-------------------------------------	
puts "Now we try when"

x = 4
case x
when 1,2,3
	puts "1, 2, or 3"
when 10
	puts "10"
else
	puts "Some other number"
end
#-------------------------------------	
puts "Now we're playing with 'then'"
a = 0
b = 0
if a > b; puts "a wins!" end
if a < b then puts "b wins!" end
#-------------------------------------
puts "Now we try to figure out 'super'"

module Vehicular
@position = 0
  def move_forward(n)
    @position += n
  end
end

class Vehicle
  include Vehicular  # Adds Vehicular to the lookup path
end

class Car < Vehicle
  def move_forward(n)
    puts "Vrooom!"
    super            # Calls Vehicular#move_forward
  end
end
#puts move_forward(10)
puts "Hmmm don't quite understand how to test this with module yet"
#-------------------------------------