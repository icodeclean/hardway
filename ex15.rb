# set set filename to first arg
filename = ARGV.first
# set prompt
prompt = "> "
# open filename and assign to txt variable 
txt = File.open(filename)

puts "Here's your file: #{filename}"
# display txt
puts txt.read()

puts "I'll also ask you to type it again:"
print prompt
# get file from user input
file_again = STDIN.gets.chomp()
# open file and assign to txt_aagin
txt_again = File.open(file_again)

puts txt_again.read()