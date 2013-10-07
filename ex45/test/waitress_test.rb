require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/braskyengine'
require_relative '../lib/waitress'

class WaitressTest < MiniTest::Test

  def setup
   @waitress = Waitress.new
  end

  def test_waitress_should_respond_to_prompt
    response = @waitress.accost
    assert_equal response, "hello"
  end

  def test_waitress_should_respond_to_no
    response = @waitress.try_again("no")
    assert_equal response, "shit"
  end


end
