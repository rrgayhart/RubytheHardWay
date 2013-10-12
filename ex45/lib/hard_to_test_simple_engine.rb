class HardToTestSimpleEngine
  def run
    user_input = gets.chomp

    if user_input == 'yes'
      puts 'hiya!'
    else 
      puts 'Sorry, Charlie!'
    end
  end
end
