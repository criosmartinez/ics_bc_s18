line_width = 80

#My Array
table_of_contents = ['Harry Potter and the Sorcerer\'s Stone', 'Table of Contents', 'Chapter 1: The Boy Who Lived', '9', 'Chapter 2: The Vanishing Glass', '10', 'Chapter 3: The Letters from No One', '11', 'Chapter 4: The Keeper of the Keys', '20', 'Chapter 5: Diagon Alley', '200']

#Printing my Array
puts ' '
puts table_of_contents[0].center(line_width)
puts table_of_contents[1].center(line_width)
puts table_of_contents[2].ljust(line_width-10) + 'page'.rjust(5) + table_of_contents[3].rjust(line_width/16)
puts table_of_contents[4].ljust(line_width-10) + 'page'.rjust(5) + table_of_contents[5].rjust(line_width/16)
puts table_of_contents[6].ljust(line_width-10) + 'page'.rjust(5) + table_of_contents[7].rjust(line_width/16)
puts table_of_contents[8].ljust(line_width-10) + 'page'.rjust(5) + table_of_contents[9].rjust(line_width/16)
puts table_of_contents[10].ljust(line_width-10) + 'page'.rjust(5) + table_of_contents[11].rjust(line_width/16)
