# setting up my variables
boss_initial = 'Hello, Carolina. Come on in. I don\'t have much time. Why are you here?'
carolina_replies = 'Hello, sir. I wanted to talk to you because I have been wanting to ask you...'
boss_replies = 'Well what could you possibly want huh??!!'

# main program
puts boss_initial
puts carolina_replies
puts boss_replies.upcase
request = gets.chomp
boss_response = 'You want what??!!! Carolina wants "' + request.upcase + '"!! Well, guess what, Carolina? You\'re fired!!!'
puts boss_response.upcase
