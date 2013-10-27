class Lexicon
Pair = Struct.new(:token, :word)

  def scan(words)
    array = []
    words.split.each do |word|
      #change this to a case statement
      # Need to look up case statments
      if directions.include?(word)
        token = :direction
      else
        token = :verb 
      end
      array << Pair.new(token, word)
    end
    array
  end

  def directions
    ['north', 'east', 'south', 'west']
  end

  def verbs
    ['go', 'stop', 'kill', 'eat']
  end

  def stop
    ['the','in', 'of', 'from', 'at', 'it']
  end

  def nouns
    ['door', 'bear', 'princess', 'cabinet']
  end

  def numbers
    #this one I'm not sure what to do with yet
  end

end


