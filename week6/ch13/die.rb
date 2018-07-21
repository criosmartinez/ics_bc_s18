class Die
  def initialize
    roll
  end

  def roll
    @number_showing = rand(1..6)
  end

  def showing
    @number_showing
  end

  # Define a cheat method here
  def cheat
    puts 'What number do you want to roll?'
	number = gets.chomp.to_i
	if number >= 1 && number <= 6
	  @number_showing = number
	else
	  puts 'Cheater!!!'
    end
    @number_showing	
  end
end


dice = Die.new
puts dice.showing
puts dice.cheat
