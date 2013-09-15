class Looper
	def pushloop(i, increment, under)
	numbers = []
	while (i < under)
		puts "At the top i is #{i}"
		numbers.push(i)
	
		i = i + increment
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end
	end
	

	def printloop
		puts "The numbers: "

		for num in numbers
		puts num
		end
	end
end