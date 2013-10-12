class EasyToTestSimpleEngine
  attr_reader :input, :output

  def initialize(input = $stdin, output = $stdout)
    @input  = input
    @output = output
  end

  def run
    user_input = input.gets.chomp

    if user_input == 'yes'
      output.puts 'hiya!'
    else 
      output.puts 'Sorry, Charlie!'
    end
  end
end