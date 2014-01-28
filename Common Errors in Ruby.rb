# A common coding problem is trying to add a string and int accidentally.
puts 'What is your name?'
name = gets.chomp
puts 'Did you know there are ' + name.length + ' characters'
puts ' in your name, ' + name + '?'
# This  will throw the "can't convert Fixnum into String error," as it with try to really add a string to a number.
# Also note that .length method will give you the number of CHARACTERS and not LETTERS! Space is considered a character.


