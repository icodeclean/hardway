# Multiwiz is a tool to help test your multiplication skills in any number multiplied by 1 through 12.
#*****************************************************************************************************

correct = 0  # number of answers player gets right
wrong = 0   # number of answers player gets wrong
prompt = '> ' # simple prompt for polite GUI

system('clear') # clean up terminal
spacer = "*" * 100    # ******************************************
puts spacer, spacer, spacer  # displays 3 lines of spacer
puts  "Multiwiz is a tool to help test your multiplication skills in any number multiplied by 1 through 12."
puts spacer   # displays another line of spacer
puts "" # blank line

puts "Welcome to Multiwiz!"
puts "What is your Name!"
print prompt
name = STDIN.gets.chomp.capitalize   # gets name of player and capitalizes it.
puts "Hello #{name}! What number would you like to test your chops on today?"
print prompt
num = STDIN.gets.chomp.to_i   # gets number player would like to test skill on
puts "" # blank line
puts "Great! Here we go!!!"
input = 0   # initialize player input

while (!(input.to_s == "exit"))  # sets loop that lets questions continue till player types exit
  multiplier = 1 + rand(12) #setting multiplier to a random number from 1-12. 
  answer = num * multiplier   # Solves the problem and sets the solution to answer
  puts "What is #{num} * #{multiplier}"
  print prompt
  input = STDIN.gets.chomp    # get players solution and set to input 
  
  if (input.to_s == "exit") # makes sure that when you type "exit" it does not affect your tally by not checking if input is correct again
   puts ""  # blank line
        
  elsif (answer == input.to_i)    # checks if answer is correct
    puts "Correct! #{num} * #{multiplier} = #{answer}"  # informs player of success
    correct += 1    # increases success count
    puts "You got #{correct} correct and have missed #{wrong}."   # shows player current tally
    puts # blank line
    
  else
    puts "Wrong! #{num} * #{multiplier} is not #{input} but #{answer}"    # tells player answer is wrong
    wrong += 1    # increases wrong tally
    puts "You have missed #{wrong} and gotten #{correct} right."    # shows player current tally
    puts # blank line
  end
end


puts "You have chosen to end your session with #{correct} correct answers and #{wrong} wrong."
# catch if user gets none correct 
if (correct == 0 || (correct == 0 && wrong == 0))
  percent = 0
else
percent = (correct * 100.0 / (correct + wrong))  # setting percentage player got right
end


# Check players score percent again some ranges and print appropriate response
if (percent >= 80)
  puts "Great Job #{name}! You scored #{percent}%. you got an A! Remember, practice makes perfect!", "See you later!"
  report_info = "With #{percent}%, You got an A! Remember, practice makes perfect!"   # Sets report_info for this score
  
elsif (70 <= percent && percent< 80)
  puts "#{name}, you got #{percent}% right, which is a B! A little more practice and you will take over the world! ;)", "See ya!"
  report_info = "With #{percent}%, You got B. A little more practice will make you excellent"
  
elsif (60 <= percent && percent < 70)
  puts "You scored #{percent}%, which is a C! #{name}, you need some decent practice", "Come back real soon."
  report_info = "With #{percent}%, You got C. A decent amount of work is required to be better."
  
elsif (percent < 60 && percent!=0)
  puts "#{name}, You scored #{percent}%. You can do much much better. No TV for you till then.", "Take a short break and get back to practice."
  report_info = "#{percent}%, Not a good score... You will need much more practice. No TV for you until you get better"

elsif (percent == 0)
  puts "Whaaaaaaaa? You did not even do any work! You scored #{percent}%, Look Atew!"
  report_info = "You did not do anything."
end
  
  
time = Time.new # getting the current time
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S") # formatting the time
file_name = name + "-" + formatted_time  # name of file to save session info. it includes date and time
  
 # session info to be saved + added report_info
 report = <<MESSAGE
 #{name}, in this session, you got #{correct} correct and missed #{wrong}.
 #{report_info}  
MESSAGE

 report_card = File.open(file_name, 'w')  # opening a new file to save session info in
 report_card.write(report)   # writing info to the file
 report_card.close # closing the file after writing info
 
 # informing player of the name of the file their session info is saved in
 puts "" #blank space
 puts "#{name}, by the way, your session info was saved in #{file_name}.txt."
 puts ""
 puts spacer # displays line of ***********************
 
__END__
- After the prescribed condition is met, the "while" still goes through its directive once?