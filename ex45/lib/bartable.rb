require_relative 'stories'
require_relative 'parse'

class BarTable
  include Stories
  include Parse

  def initialize
    welcome
  end

  def welcome
    puts "You made it to the bar table"
    puts "What will you order?"
    order_drinks
  end

  def order_drinks
    prompt
    drinks = gets.chomp
    unless drinks == "exit"
      puts "You ordered a #{drinks}"
      bar_table_antics(drinks)
    else
      puts "Braskey would be dissapointed. But we understand."
    end
  end

  def bar_table_antics(drinks)
    case drinks
      when 'beer' then tell_story
      when 'round' then tell_some_stories
      when 'wine' then puts "Brasky would be disapointed man"
      when 'whiskey' then puts "OH SHIT! BRASKY IS HERE!"
      else puts "The bartender glares at you for getting fancy."
    end
    puts "You chug your #{drinks}"
    puts "What do you buy next?"
    order_drinks
  end

  def tell_first_story
    return short_brasky_stories[0]
  end

  def tell_story
    print "One of your drunk buddies shouts \'Three Cheers for Brasky! "
    story = all_brasky_stories.shuffle
    puts "#{story.first}\'"
  end

  def tell_some_stories
    a_bunch_of_stories
  end

end
