puts 'Let me tell you how many leap years have happened between two years.'
puts 'Please give me a starting year.'
starting_year = gets.chomp.to_i
puts 'Now, give me an ending year.'
ending_year = gets.chomp.to_i
puts ' '
puts 'These are the leap years in between your two years: '

while starting_year < ending_year
  if (starting_year%4 == 0 || starting_year%400 == 0) && starting_year%100 != 0
    puts starting_year.to_s
  end
  starting_year = starting_year + 1
end
