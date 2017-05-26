# Welcome screen
puts "Welcome to the DBC Alias Manager!"
puts" You can continue entering names until you enter 'quit'"

# While loop that is broken if the user enters "quit"
while true
	# Obtains spy's real name
	puts "What is the spy's real name which you need to disguise?"
	real_name = gets.chomp

	if real_name.downcase == "quit"
	break
	end

	# Splits into an array
	disguise = real_name.split(' ')

	# Swaps the first and last name
	disguise = disguise.reverse

	# Changes vowels and consonents
	disguise.each do |x|
	x.tr!('aeiou', 'eioua')
	x.tr!('AEIOU', 'EIOUA')
	x.tr!('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
	x.tr!('BCDFGHJKLMNPQRSTVWXYZ', 'CDFGHJKLMNPQRSTVWXYZB')
	end
	puts disguise
end