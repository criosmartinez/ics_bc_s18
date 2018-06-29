def number_to_roman_numeral number
  roman_numeral = ['M', 'CM','D', 'CD','C', 'XC', 'L', 'XL','X', 'IX','V', 'IV','I']
  roman_value = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  roman_number = ''

  for idx in 0..12
    for times in 1..number/roman_value [idx]
      roman_number = roman_number + roman_numeral [idx]
    end
    number = number % roman_value [idx]
  end
  return roman_number
end

puts 'Please type in a number to have it converted to modern Roman numerals:'
input = gets.chomp.to_i
puts number_to_roman_numeral (input)
