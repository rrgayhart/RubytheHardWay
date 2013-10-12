require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'stringio'
require_relative '../lib/easy_to_test_simple_engine'

class EasyToTestSimpleEngineTest < MiniTest::Test

  def test_it_should_respond_to_yes
    input = StringIO.new("yes\n")
    output = StringIO.new

    @engine = EasyToTestSimpleEngine.new(input, output)

    @engine.run

    assert_equal output.string, "hiya!\n"
  end

  def test_it_should_respond_to_no
    input = StringIO.new("no\n")
    output = StringIO.new

    @engine = EasyToTestSimpleEngine.new(input, output)

    @engine.run

    assert_equal output.string, "Sorry, Charlie!\n"
  end
end