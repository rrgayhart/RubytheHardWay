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
    assert_equal 'error', response
  end

  def test_it_should_index_input
    response = @game.input_with_index("go to")
    assert_equal response, [["go", 0], ["to", 1]]
  end

  def test_it_should_go_to_the_bar
    response = @game.welcome("bar")
    assert_kind_of Bar, response
  end

  def test_it_should_handle_long_inputs
    response = @game.welcome("I don't know, go to the bar I guess")
    assert_kind_of Bar, response
  end

  def test_end_should_end_game
    response = @game.starter("end")
    assert_equal nil, response
  end

end
