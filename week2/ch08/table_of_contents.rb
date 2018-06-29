line_width = 80

#table_of_contents (old) = ['Harry Potter and the Sorcerer\'s Stone', 'Table of Contents', 'Chapter 1: The Boy Who Lived', '9', 'Chapter 2: The Vanishing Glass', '10', 'Chapter 3: The Letters from No One', '11', 'Chapter 4: The Keeper of the Keys', '20', 'Chapter 5: Diagon Alley', '200']

#revised
                      #title                                  , #page
table_of_contents = [['Harry Potter and the Sorcerer\'s Stone'],
                    ['Table of Contents'],
                    ['Chapter 1: The Boy Who Lived', '9'],
                    ['Chapter 2: The Vanishing Glass', '10'],
                    ['Chapter 3: The Letters from No One', '11'],
                    ['Chapter 4: The Keeper of the Keys', '20'],
                    ['Chapter 5: Diagon Alley', '200']]

#Printing my Array
puts ' '
for title in 0..1
  puts table_of_contents[title][0].center(line_width)
end

for chapter in 2..6
  puts table_of_contents[chapter][0].ljust(line_width-10) + 'page'.rjust(5) + table_of_contents[chapter][1].rjust(line_width/16)
end
