# set x string
x = "There are #{10} types of people."
# set binary string
binary = "binary"
# set do_not string
do_not = "don't"
# use string interpolation to feed 2 strings into y string
y = "Those who know #{binary} and those who #{do_not}."
# echo x
puts x
#echo y
puts y
# echo new string with interpolation
puts "I said: #{x}."
# echo new string with interpolation
puts "I also said: '#{y}'."
#set hilarious to false
hilarious = false
#more string interpolation
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
# print joke_evaluation
puts joke_evaluation
# set string w
w = "This is the left side of ..."
# set string e
e = "a string with a right side."
# print string w and e (concatenation)
puts w + e