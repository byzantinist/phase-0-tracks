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

  def makes_a_puddle
  	puts "Oop! There was no fire hydrant nearby so I made a puddle!"
  end

end

kitty = Puppy.new
kitty.fetch("ball")
kitty.speak(5)
kitty.roll_over
puts kitty.dog_years(5)
kitty.makes_a_puddle