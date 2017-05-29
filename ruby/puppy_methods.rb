class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	# Testing a different type of count increment
  	count = ""
  	while count.length < integer
  		puts "Woof!"
  		count += "z"
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	dog_conversion = 7 * human_years
	dog_conversion
  end

  # A new behavior/trick that I created. Sorry for the mess!
  def makes_a_puddle
  	puts "Oop! There was no fire hydrant nearby so I made a puddle!"
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end
end

# Driver code
dog = Puppy.new
dog.fetch("ball")
dog.speak(5)
dog.roll_over
puts dog.dog_years(5)
dog.makes_a_puddle

# Release 2: Create a new method (Kitty)

class Kitty

	def initialize
		puts "A new kitten joins the stage ..."
	end

	def meow(integer)
		count = 0
		while count < integer
			puts "Meow!"
			puts "Meow meow!"
			count += 1
		end
	end

	def scratch(name)
		puts "Ouch! That really hurt! Why did #{name} scratch me?"
	end

	def kitten_explosion
		# Create a hash to store each new instance of Kitty
		kitten_hash = {}
		count = 1
		while count < 51
			key = "Kitten ##{count}"
			kitten_hash[key] = Kitty.new
			count += 1
		end
		
		kitten_hash.each do |key, value|
			value.meow(1)
			value.scratch(key)
		end

		puts "Oh noes! I have been scratched #{count-1} times! I think I'm gonna die!"

		kitten_hash
	end

end

cat = Kitty.new
cat.meow(3)
cat.scratch("kitty")
litter = cat.kitten_explosion
