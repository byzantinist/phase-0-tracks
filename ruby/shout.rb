module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "! Hurrah!!!" + " :)"
  end

end

puts Shout.yell_angrily("Arrrgh")
puts Shout.yell_happily("Yay")
