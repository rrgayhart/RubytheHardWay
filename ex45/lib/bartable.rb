require_relative 'stories'

class BarTable
  include Stories

  def initialize
  end

  def tell_first_story
    return short_brasky_stories[0]
  end

  def tell_story
    story = all_brasky_stories.shuffle
    story.first
  end

  def tell_some_stories
    a_bunch_of_stories
  end

end
