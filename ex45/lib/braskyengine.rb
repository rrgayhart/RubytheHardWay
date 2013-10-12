# GO THROUGH AND RETURN THE COMMENTED OUT STORY CALLS

require_relative 'bar'
require_relative 'bartable'
require_relative 'funeral'
require_relative 'waitress'
require_relative 'stories'
require_relative 'parse'

class BraskyEngine
  include Stories
  include Parse

  def welcome
      warning_story
      exterior_story
      next_move
  end

  def next_move
      prompt
      input = gets.chomp
      unless input == "exit"
        if input_to_array(input).include?('bar') || input_to_array(input).include?('yes') 
          Bar.new
        elsif input_to_array(input).include?('no')
          puts "Your loss."
        else
          unrecognized_command
          next_move
        end
      end
  end

end

game = BraskyEngine.new
game.welcome
