input_array=[]
prompt = "> "
while true
  print prompt
  input = gets.chomp()
  if (input=="")
    break
  else
    input_array.push(input)
  end
end
puts 
sorted = input_array.sort()
puts sorted