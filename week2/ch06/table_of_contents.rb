#setting up the width of the line
lineWidth = 80

# setting up my chapters and page variables
chapter1 = 'Chapter 1: The Boy Who Lived'
chapter2 = 'Chapter 2: The Vanishing Glass'
chapter3 = 'Chapter 3: The Letters from No One'
chapter4 = 'Chapter 4: The Keeper of the Keys'
chapter5 = 'Chapter 5: Diagon Alley'

# my main program
puts ' '
puts ('Harry Potter and the Sorcerer\'s Stone'.center(lineWidth))
puts ('Table of Contents'.center(lineWidth))
puts ' '
puts (chapter1.ljust(lineWidth-10) + 'page'.rjust(5) + '1'.rjust(lineWidth/16))
puts (chapter2.ljust(lineWidth-10) + 'page'.rjust(5) + '18'.rjust(lineWidth/16))
puts (chapter3.ljust(lineWidth-10) + 'page'.rjust(5) + '31'.rjust(lineWidth/16))
puts (chapter4.ljust(lineWidth-10) + 'page'.rjust(5) + '46'.rjust(lineWidth/16))
puts (chapter5.ljust(lineWidth-10) + 'page'.rjust(5) + '61'.rjust(lineWidth/16))
