require_relative 'stories'
require_relative 'parse'

## Would like to add a way to add to the counter but having trouble getting += to worl

class Waitress
  include Stories
  include Parse

  def initialize
    accost
  end

  def counter
    @counter = 0
  end

  def accost
    waitress_story
    puts "Try again?"
    answer = gets.chomp
    try_again(answer)
  end

  def try_again(answer)
    if answer == "yes"
      accost
    else
      puts "You gave up and go back to meet up with your buddies."
      BarTable.new
    end
  end

end
