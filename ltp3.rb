puts 'Hi! what is your name?'
name = gets.chomp
puts 'Well, it is very nice to meet you ' + name + '!'
puts name + ', hmmm... I have never had a friend with that name before'
puts 'Would you be my friend?'
# Asking for friendship
friendstatus = gets.chomp
until (friendstatus == "yes" || friendstatus ==="no" ) 
  puts name + ', I don\'t want to hear that, please say "yes" or "no"'
  friendstatus = gets.chomp
end 
# Responding to friendship status
if (friendstatus == 'yes') 
puts  'Yhay! BFFs for life!'
puts 'How old are you?'
age = gets.to_i
puts "Ah hah, you are #{age / 10} decades and #{age % 10} years old. Sweet!"
else
  puts 'Your loss. I would have been a good friend for you. Have a nice day...NOT! '
end

