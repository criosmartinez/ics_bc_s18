def roman_to_integer (roman_number)
  roman_numeral = ['M','D','C','L','X','V','I']
  roman_value = [1000,500,100,50,10,5,1]
  number = 0
  for idx in 0...roman_number.length
    numeral = roman_number[idx]
    index = roman_numeral.index(numeral)
    if index == nil
	  puts 'Invalid roman number'
	  exit
	end
	number = number + roman_value[index]
  end
  puts number
end

puts 'Please enter a roman number:'
roman = gets.chomp
roman_to_integer (roman)
