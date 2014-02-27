class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song()
    for line in @lyrics
      puts line
    end
  end
end

happy_bday = Song.new(["Happy birthday to you",
  "I don't want to get sued",
  "So I'll stop right there"])
  
bulls_on_parade = Song.new(["They rally around the family",
  "With pockets full of shells"])
  
happy_bday.sing_me_a_song()
bulls_on_parade.sing_me_a_song()
test=Song.new([1,2,3])
test.sing_me_a_song()

__END__
You can pass array into a class when you instantiate it.

Class vs Module
You can craft millions of classes at a time if you want but with a module, 
when you require it, there is only one for the entire program.