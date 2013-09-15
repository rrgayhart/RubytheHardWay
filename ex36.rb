def prompt()
	prompt = "> "
end

def start()
	puts "Things are messy. What should you do?"
	puts "Clean the kitchen?"
	puts "Do some laundry?"
	puts "Give up and go to bed?"
	prompt; decision = gets.chomp
	if decision.include? "kitchen"
		clean_kitchen()
	elsif decision.include? "laundry"
		do_laundry()
	elsif decision.include? "bed" || "give"
		give_up()
	else
		puts "you gotta keep trying honey bear"
		start()
	end
end

def clean_kitchen()
	puts "How many dishes do you want to wash?"
	num = gets.chomp.to_i
	dishes = 0 
	while dishes < num
		puts "You wash a dish"
		dishes += 1
	end
	puts "You have cleaned the kitchen"
	do_more()
end

def do_laundry()
	puts "You do the laundry:"
	do_more()
end

def give_up()
	puts "Fuck it, right?"
	puts "Goodnight moon"
end

def do_more
	puts "Want to do anything else?"
	decision = gets.chomp
	if decision.include? 'y'
		start()
	else 
		puts "That's cool. Go to bed."
	end
end

puts "You open the door to the apartment."
start()