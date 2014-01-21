# lbs to kilo / inch to centimeter converter

puts "What would you like to convert? inches to centimeter or lbs to kilos?"
type = gets.chomp
while (type != "inches" && type !="lbs") 
puts "Please type in lbs or inches"
type = gets.chomp
end
puts ""

if (type == "inches")
  puts "Enter length in inches you would like to convert"
  length = gets.to_i
  puts "#{length} inch/es is equal to #{length * 2.54} centimeters"
else
  puts "Enter weight in lbs you would like to convert"
  weight= gets.to_i
  puts "#{weight} lb/s is equal to #{weight * 0.4535923} Kilograms"
end




