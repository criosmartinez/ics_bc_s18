#When I am one billion years old
my_birthday = Time.local(2000, 06, 12, 9, 30, 23) #year month day
billion_seconds_old = my_birthday + 1000000000
puts 'Carolina will be one billion seconds old on:'
puts billion_seconds_old
puts

#When user is a billion years old
puts "Please type in your birthday. (ex: 06-12-2000)" #month day year (0, 1, 2)
user_birthday = gets.chomp
puts
puts "If you know the exact time you were born, please type it below. If you do not know, please press Enter.  (ex: 09:30:23)" #hour minute second
user_birthday_time = gets.chomp

if user_birthday == ""
  birthday_array = [user_birthday[0..1], user_birthday[3..4], user_birthday[6..9]]
  birthday = Time.local(birthday_array[2], birthday_array[0], birthday_array[1])
  puts
  puts "You will be one billion seconds old on:"
  puts birthday + 1000000000
else
  birthday_array = [user_birthday[0..1], user_birthday[3..4], user_birthday[6..9]]
  time_array = [user_birthday_time[0..1], user_birthday_time[3..4], user_birthday_time[6..9]]
  birthday = Time.local(birthday_array[2], birthday_array[0], birthday_array[1], time_array[0], time_array[1], time_array[2])
  puts
  puts "You will be one billion seconds old on:"
  puts birthday + 1000000000
end
