module Parse

  def prompt
    printf "> "
  end

  def input_with_index(input)
    result = []
    input.split.each_with_index{|word, index| result << [word, index]}
    result
  end

  def input_to_array(input)
    input.split
  end

  def unrecognized_command
    puts "I don't recognize that command. Try again."
    return "error"
  end

end
