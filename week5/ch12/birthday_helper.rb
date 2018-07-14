birth_dates = {}

file = 'birthday_helper_input.txt'
birthdays = File.open(file, "r")
birthdays.each do |file_line|
  name = file_line[0..file_line.index(',')-1]
  birthday = file_line[-13..-1]
  birth_dates[name.strip] = birthday.strip
end

puts 'Please type in the name you are looking for:'
user_input = gets.chomp
response = birth_dates[user_input]

if response == nil
  puts 'This name is not in the file.'
else
  puts response[0..response.index(',')-1]
end
