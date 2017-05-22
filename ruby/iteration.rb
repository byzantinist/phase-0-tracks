# Write Your Own Method That Takes a Block

#def greetings
#	puts "My status is READY!"
#	yield("testing")
#	puts "My status is COMPLETE!"
#end
#greetings {|verb| puts "#{verb}...#{verb}...#{verb}..."}

# Release 1: Use each, map, and map!

# Declare an array
zoo = ["Red Panda", "Sloth", "Flying Fox"]

# Declare a hash
zoo_inventory = { "red_panda" => 'adorable', "sloth" => "funky", "flying_fox" => "cute" }

# Use "each" on array
zoo.each do |animal|
	puts "The zoo has a wonderful #{animal}!"
end

# Use "each" on hash
zoo_inventory.each do |animal, appearance|
	puts "The zoo's #{animal} is very #{appearance}!"
end

# Use "map!" on array
puts zoo
zoo.map! do |animal|
	if animal == "Red Panda"
		morph = "Panda"
	elsif animal == "Sloth"
		morph = "Cheetah"
	elsif animal == "Flying Fox"
		morph = "Vampire Bat"
	end
	puts "Oh no! The #{animal} has turned into a #{morph}!"
	morph
end
puts zoo

#Release 2: Use the Documentation

array_numbers = [3, 4, 5, 6, 7]
puts array_numbers.delete_if { |a| a < 5 }

hash_numbers = {3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven"}
puts hash_numbers.delete_if { |digit, word| digit < 5}

array_numbers = [3, 4, 5, 6, 7]
puts array_numbers.select { |a| a <5 }

hash_numbers = {3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven"}
puts hash_numbers.select {|digit, word| digit < 5}

zoo = ["Red Panda", "Sloth", "Flying Fox"]
puts zoo.select { |a| a.length > 6}

zoo_inventory = { "red_panda" => 'adorable', "sloth" => "funky", "flying_fox" => "cute" }
puts zoo_inventory.select {|digit, word| word == "funky"}

array_numbers = [3, 4, 5, 6, 7]
puts array_numbers.drop_while { |a| a < 6}
