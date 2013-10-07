require_relative 'stories'
require_relative 'parse'

class Waitress
  include Stories
  include Parse

  attr_accessor :count

  def initialize
    accost
    @count = 0
  end

  def accost
    waitress_story
    puts "Try again?"
    answer = gets.chomp
    try_again(answer)
  end

  def try_again(answer)
    "shit"
  end

end
