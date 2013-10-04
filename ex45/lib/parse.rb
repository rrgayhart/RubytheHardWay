module Parse

  def input_with_index(input)
    result = []
    input.split.each_with_index{|word, index| result << [word, index]}
    result
  end

  def input_to_array(input)
    input.split
  end

end
