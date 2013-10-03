require_relative 'bar'
require_relative 'bartable'
require_relative 'funeral'
require_relative 'waitress'
require_relative 'stories'

class BraskyEngine
  include Stories

  def welcome(input)
    exterior_story
    return input
  end

end

#game = BraskyEngine.new
#input = gets.chomp
#game.welcome(input)

