require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/braskyengine'
require_relative '../lib/bar'
require_relative '../lib/bartable'
require_relative '../lib/funeral'
require_relative '../lib/waitress'

class BraskyEngineTest < MiniTest::Test

  def setup
    @game = BraskyEngine.new
  end

  def test_game_should_exist
    assert @game
  end

  def test_it_should_have_a_welcome_prompt
    response = @game.welcome('hello')
    assert_equal response, 'well, hello'
  end

  def test_it_should_go_to_the_bar
    response = @game.welcome("bar")
    assert_equal response, Bar.new("bar")
  end

  def test_it_should_handle_long_inputs
    response = @game.welcome("I don't know, go to the bar I guess")
    assert_equal response, Bar.new("I don't know, go to the bar I guess")
  end
end
