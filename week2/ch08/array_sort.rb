puts 'Type in a word per line. Once you are done, push enter on an empty line to see your words in alphabetical order!'

words = []
while true
  input = gets.chomp
  if input == ''
    break
  end
  words.push input
end
puts words.sort
