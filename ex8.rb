formatter = "%s %s %s %s"

puts formatter % [1, 2, 3, 4]
puts formatter % ["one", "two", "three", "four"]
puts formatter % [true, false, false, true]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
  "I had this thing.",
  "That you could type up right.",
  "But it didn't sing.",
  "So I said goodnight."  
]

__END__
-Format sequence is a powerful tool. You can make any type of text template and feed variables into it.
-it can even feed itself into itself showing flexibility
-integers and boolean, variables can be passed without quotes but strings need quotes or they might be mistaken
for variables