require_relative 'stories'
require_relative 'parse'

class Bar
  include Stories
  include Parse

  def initialize
    welcome
  end

  def welcome
    bar_story
    bar_decision
  end

  def bar_decision
    prompt
    response = gets.chomp
    unless response == "exit"
      if response.include? "waitress"
        Waitress.new
      elsif response.include?("table") || response.include?("friend")
        BarTable.new
      elsif response.include?("run") || response.include?("scream")
        puts "Hey, that's only fair"
      else
        unrecognized_command
        bar_decision
      end
    end
  end

end
