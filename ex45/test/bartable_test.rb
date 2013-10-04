require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/braskyengine'
require_relative '../lib/bartable'

class BarTableTest < MiniTest::Test

  def setup
    @game = BraskyEngine.new
    @bartable = BarTable.new
  end

  def test_it_should_return_a_story
    response = @bartable.tell_first_story
    assert_includes response, "Bill"
  end

  def test_it_should_return_iterated_stories
    response1 = @bartable.tell_story
    response2 = @bartable.tell_story
    refute_equal response1, response2
  end

  def test_it_should_tell_some_unique_stories
    response = @bartable.tell_some_stories
    assert_equal 6, response.next
  end

end
