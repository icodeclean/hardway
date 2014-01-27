module Ex25
  def self.break_words(stuff)
    # This function will break up words for us.
    words = stuff.split(' ')
    words
  end
  
  def self.sort_words(words)
    # Sorts the words.
    words.sort()
  end
  
  def self.print_first_word(words)
    # Prints the first word and shifts the others down by one.
    word = words.shift()
    puts word
  end
  
  def self.print_last_word(words)
    # Prints last word after popping it off the end.
    word = words.pop()
    puts word
  end
  
  def self.sort_sentence(sentence)
    # Takes in a full sentence and returns the sorted words.
    words = break_words(sentence)
    sort_words(words)
  end
  
  def self.print_first_and_last(sentence)
    # Print the first and last words of the sentence.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end
  
  def self.print_first_and_last_sorted(sentence)
    # Sorts the words then prints the first and last one.
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end  

__END__
- This is a module
- The reason we put functions in a module is so they have their own namespace and would not collide with 
other ppl's functions if they share a function name.
- If typing the name space is annoying, you can type "include Ex25", which is like saying include everything 
from the Ex25 module into my current module.
- You call this module in another script by typing "require ./ex25" or "./Ex25.rb"
why ./ ?

  