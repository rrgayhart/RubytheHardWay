require_relative 'stories'
require_relative 'parse'
require_relative 'bartable'


## Would like to add a way to add to the counter but having trouble getting += to worl

class Waitress
  attr_reader :lines, :output, :input
  include Stories
  include Parse

  def initialize(input = $stdin, output = $stdout)
    @input = input
    @output = output
    @lines = ["I love you. Marry me.",
      "If I give you a dollar, will you play me a song on the jukebox?",
      "Your daddy musta been a meat burgler... wait... where are you going?", 
      "Did it hurt? \n.\n.\n.\nWhen you fell from heaven?",
      "Hey girl. What you sippin?"]
    accost
  end

  private

  def accost
    waitress_story
    hit_on
  end

  def hit_on
    output.puts "Try again?"
    answer = input.gets.chomp
    try_again(answer)
  end

  def give_up
    output.puts "You go back to meet up with your buddies."
  end

  def try_again(answer)
    if answer == "yes"
      unless @lines == []
        output.puts "----------------"
        output.puts "You decide to try one of your favorite lines: "
        output.puts @lines.pop
        waitress_reply
        hit_on
      else
        final_waitress_reply
        give_up
      end
    else
      output.puts "Good. Leave the waitress alone."
      give_up
    end
  end

end
