line_width = 50

puts 'Table of Contents'.center(line_width)
puts 'Chapter 1: Getting Started'.ljust(line_width/2) + 'page 1'.rjust(line_width/2-1) + "\n" # Why need -1 to make it align? 
puts 'Chapter 2: Numbers'.ljust(line_width/2) + 'page 9'.rjust(line_width/2) + "\n"
puts 'Chapter 3: Letters'.ljust(line_width/2) + 'page 13'.rjust(line_width/2) 
