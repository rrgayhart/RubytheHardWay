require_relative 'stories'
require_relative 'parse'

class Bar
  include Stories
  include Parse

  def initialize
    #remove the comment after testing to make game functional
    #welcome
  end

  def prompt
    puts "> "
    response = gets.chomp
    response.input_to_array
    bar_decision(response)
  end

  def welcome
#=> ADD ME    #bar_story
    prompt
  end

  def bar_decision(response)
    if response.include? "waitress"
      Waitress.new
    elsif response.include?("table") || response.include?("friend")
      BarTable.new
    elsif response.include?("run") || response.include?("scream")
      starter("end")
    else
      unrecognized_command
    end
  end

end
