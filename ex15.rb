# set set filename to first arg
filename = ARGV.first
# set prompt
prompt = "> "
# open filename and assign to txt variable 
txt = File.open(filename)

puts "Here's your file: #{filename}"
# display txt
puts txt.read()
txt.close()

puts "I'll also ask you to type it again:"
print prompt
# get file from user input
file_again = STDIN.gets.chomp()
# open file and assign to txt_aagin
txt_again = File.open(file_again)
txt_again.close()

puts txt_again.read()

__END__
- File.open(x)  to open a file
- y.read()   to read the contents of the file
- .close() to close a file after reading it.