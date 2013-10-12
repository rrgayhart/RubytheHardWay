require_relative 'stories'
require_relative 'parse'

## Would like to add a way to add to the counter but having trouble getting += to worl

class Waitress
  attr_reader :lines
  include Stories
  include Parse

  def initialize
    @lines = ["I love you. Marry me.","If I give you a dollar, will you play me a song on the jukebox?","Your daddy musta been a meat burgler... wait... where are you going?","Hey girl. What you sippin?", "Did it hurt? \n.\n.\n.\nWhen you fell from heaven?"]
    accost
  end

  def accost
    waitress_story
    hit_on
  end

  def hit_on
    puts "Try again?"
    answer = gets.chomp
    try_again(answer)
  end

  def give_up
    puts "You go back to meet up with your buddies."
    BarTable.new
  end

  def try_again(answer)
    if answer == "yes"
      unless @lines == []
        puts "----------------"
        puts "You decide to try one of your favorite lines: "
        puts @lines.pop
        waitress_reply
        hit_on
      else
        final_waitress_reply
        give_up
      end
    else
      puts "Good. Leave the waitress alone."
      give_up
    end
  end

end
