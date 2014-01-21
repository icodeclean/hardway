name = "Zed A. Shaw"
age = 35 # not a lie
height = 74 # inches
weight = 180 # ibs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
animal1 = 'koala'
animal2 = 'monkey'

puts "Let's talk about %s" % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "Actually, that's not too heavy."
puts "He's got %s eyes and %s hair" % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth
puts "He owns a %s and a %s." %[animal1, animal2]

# this line is tricky, try to grt it exactly right
puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]