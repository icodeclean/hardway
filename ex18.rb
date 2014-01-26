# this one is like your scripts with argv
def puts_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok that *args is actually pointless, we can just do this
def puts_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this takes one argument
def puts_one(arg1)
  puts "arg1: #{arg1}"
end

# this takes no arguments
def puts_none()
  puts "I got nothin."
end

puts_two("Zed", "Shaw")
puts_two_again("Zed", "Shaw")
puts_one("First!")
puts_none()

__END__
- def for define function
- you can use *args for unpacking like ARGV but it is better to skip the unpacking style
  and outright use the names you want for your arguments like in puts_two_again