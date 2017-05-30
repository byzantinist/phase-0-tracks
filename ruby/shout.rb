# Release 1: Standalone Module

#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#    words + "! Hurrah!!!" + " :)"
#  end
#end

# Driver code
#puts Shout.yell_angrily("Arrrgh")
#puts Shout.yell_happily("Yay")

# Release 3: Shout as a Mixin Module
module Shout
	def yell_angrily(words)
		yell = words + "!!!" + " :("
		yell
	end

	def yell_happily(words)
		yell = words + "! Hurrah!!!" + " :)"
		yell
  end
end

class Mom
  include Shout
end

class Dad
  include Shout
end

# Driver Code
mom = Mom.new
dad = Dad.new
puts "Mom says: " + mom.yell_happily("Great work")
puts "Mom says: " + mom.yell_angrily("You should be ashamed of yourself")
puts "Dad says: " + dad.yell_happily("You can win")
puts "Dad says: " + dad.yell_angrily("What did you do?")