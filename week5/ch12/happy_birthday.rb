puts 'Please type in the year you were born in:   ex: 2000' #year
birthday_year = gets.chomp
puts 'Please type in the month you were born in:  ex: 06' #month
birthday_month = gets.chomp
puts 'Please type in the day you were born in:    ex: 12' #day
birthday_day = gets.chomp

current_time = Time.new
user_birthday_time = Time.local(birthday_year, birthday_month, birthday_day)
user_seconds_alive = current_time - user_birthday_time
user_years = user_seconds_alive / 31536000

puts
puts 'Here\'s your birthday present!'
while user_years.to_i > 0
  puts "SPANK"
  user_years = user_years - 1
end
