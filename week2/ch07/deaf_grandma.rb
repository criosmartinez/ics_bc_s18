puts 'Carolina, come talk to your grandma.'
puts 'Ok, mom.'
puts '(Type what you want to say to grandma.)'

while true
input = gets.chomp
  if input == 'BYE'.chomp
    break
  end
    if input != input.upcase
    puts 'Huh?! Speak up sonny!'.upcase
    puts ' '
    else
    years = rand (1930..1950)
    puts 'No, not since '.upcase + years.to_s.upcase + '!'
    puts ' '
    end
end
