class Array
  # Your shuffle method goes here
  def shuffle 
    recursive_shuffle self, []
  end
  
  private
  def recursive_shuffle sorted_array, shuffled_order
    if shuffled_order.length == sorted_array.length
      shuffled_array = []
      for idx in 0...shuffled_order.length
        shuffled_array.push sorted_array[shuffled_order[idx]]
      end
      shuffled_array
    else
      idx = rand(0..sorted_array.length-1)
      if !shuffled_order.include?(idx)
        shuffled_order.push idx
      end
      recursive_shuffle sorted_array, shuffled_order
    end
  end  
end

class Integer
  # Your factorial and to_roman methods go here
  def factorial
	proc_factorial(self)
  end
  
  def to_roman
    roman_numeral = ['M', 'CM','D', 'CD','C', 'XC', 'L', 'XL','X', 'IX','V', 'IV','I']
    roman_value = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    roman_number = ''
	number = self
    for idx in 0..12
      for times in 1..number/roman_value [idx]
        roman_number = roman_number + roman_numeral [idx]
      end
      number = number % roman_value [idx]
    end
    roman_number  
  end
  
  private
  def proc_factorial (number)
	number == 0 ? 1 : number * (proc_factorial(number - 1))
  end
end

puts 4.factorial
puts ' '
a = ['Ana','Willy','Caro','Mom','Dad']
puts a.shuffle
puts ''
puts 86.to_roman





