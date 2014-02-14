# Calculate single digit numerals
def vi(raw_input)  
  numeral=""
    input = ((raw_input%1000)%100)%10
  if input >= 5
    numeral = "V" 
  end
  remainder = input % 5 
  remainder.times do
  numeral+= "I"
  end
  return numeral
end

  
# calculate double digit numerals
def lx raw_input   
  numeral = ""
  input = (raw_input%1000)%100
  if input >= 50
  numeral+= "L"
  end
  remainder= (input %50)/10
  remainder.times do
  numeral+="X"
end
return numeral
end


# calculate triple digit numerals
def dc raw_input
  numeral=""
  input = raw_input%1000
  if input >= 500
    numeral+="D"
  end
    remainder= (input %500)/100
    remainder.times do
    numeral+="C"
  end
  return numeral
end



# calculate > triple digit numerals
def m input
  numeral=""
  num_of_m= input/1000
  num_of_m.times do
    numeral+="M"
  end
  return numeral
end





while true
  puts "Please enter a number to convert to old style Roman Numerals"
  print "> "
  raw_input = gets.chomp
  if raw_input == ""  # exits program if input in blank
    puts raw_input
    exit
  end
 
  input=raw_input.to_i  
  if input >= 1000
    # calculate 1000s
    puts m(input) + dc(input) + lx(input) + vi(input)
  elsif (input>=100) && (input <1000)
    # calculates 100s
    puts dc(input) + lx(input) + vi(input)
  elsif (input>=10) && (input<100) 
    # calculates tens
    puts lx(input) + vi(input)
  elsif (input>=1) && (input<10)
    # calculates units
    puts vi(input)
  else
    puts "Cannot process your input. Please enter an integer greater than 0", ""
   end
end


