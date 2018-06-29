def number_to_roman_numeral number
  roman_numeral = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
  roman_value = [1000, 500, 100, 50, 10, 5, 1]
  roman_number = ''

  for idx in 0..6
    for times in 1..number/roman_value [idx]
      roman_number = roman_number + roman_numeral [idx]
    end
    number = number % roman_value [idx]
  end
  return roman_number
end

puts 'Please type in a number to have it converted to old Roman numerals:'
input = gets.chomp.to_i
puts number_to_roman_numeral (input)
