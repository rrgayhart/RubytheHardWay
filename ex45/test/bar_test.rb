require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/braskyengine'
require_relative '../lib/bar'
require_relative '../lib/bartable'

class BarTest < MiniTest::Test

  def setup
    @game = BraskyEngine.new
    @bar = Bar.new
  end

  def test_it_should_handle_input
    skip
    response_input = @bar.welcome
    assert_kind_of Waitress, response_input
  end

  def test_it_should_go_to_waitress
    response = @bar.bar_decision("waitress")
    assert_kind_of Waitress, response
  end

  def test_it_should_have_a_welcome_prompt
    response = @game.welcome('hello')
    assert_equal 'error', response
  end

  def test_it_should_go_to_bar_table
    response = @bar.bar_decision("table")
    assert_kind_of BarTable, response
  end

  def test_it_should_handle_any_input_length
    response = @bar.bar_decision("I want to go to the friend")
    assert_kind_of BarTable, response
  end

  def test_run_screaming_should_end_game
    response = @bar.bar_decision("screaming")
    assert_equal nil, response
  end

end
