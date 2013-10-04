require_relative 'bar'
require_relative 'bartable'
require_relative 'funeral'
require_relative 'waitress'
require_relative 'stories'
require_relative 'parse'

class BraskyEngine
  include Stories
  include Parse

  def welcome(input)
    exterior_story
    unless input.chomp == 'end'
      if input_to_array(input).include? ('bar')
        Bar.new
      else
        unrecognized_command
      end
    end
  end

end

#game = BraskyEngine.new
#input = gets.chomp
#game.welcome(input)
#don't forget to change this to parse
