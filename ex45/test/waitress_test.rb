require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/waitress'

class WaitressTest < MiniTest::Test

def test_waitress_prompts_user_to_try_again
    input = StringIO.new("no\n")
    output = StringIO.new

    waitress = Waitress.new(input, output)

    compare_lines(0, output.string, ["Try again?"])
end

  def test_waitress_should_respond_to_no
    input = StringIO.new("no\n")
    output = StringIO.new

    waitress = Waitress.new(input, output)

    compare_lines(1, output.string, 
    [
          "Good. Leave the waitress alone.",
          "You go back to meet up with your buddies."
    ])
  end

  def test_waitress_should_respond_to_yes_with_try_again
    input = StringIO.new("yes\nno\n")
    output = StringIO.new

    waitress = Waitress.new(input, output)
    
    compare_lines(2, output.string, 
      [
      "You decide to try one of your favorite lines: ", 
      "Hey girl. What you sippin?", 
      "Try again?"
    ])
  end

  def compare_lines(starting_at, using_output, text_to_find)
    assert_equal extract_lines(starting_at, text_to_find.count-1, using_output), text_to_find
  end

  def extract_lines(start_index, end_index, all_output)
    all_output.split("\n")[start_index..(start_index + end_index)]
  end

end
