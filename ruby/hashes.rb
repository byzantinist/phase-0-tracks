# Declare the hash
client = {
}

puts "Welcome to our interior designer services!"

# Ask user for various inputs
puts "What is your name?"
client[:name] = gets.chomp

puts "How old are you?"
client[:age] = gets.chomp.to_i

puts "How many children do you have?"
client[:num_children] = gets.chomp.to_i

puts "What sort of decor theme do you prefer?"
client[:decor] = gets.chomp

puts "Do you have any pets? (Yes or No)"
input = gets.chomp
if input.downcase == "yes"
	client[:pets] = true
elsif input.downcase == "no"
	client[:pets] = false
else
	client[:pets] = nil
end

# Print hash
puts client

# Updating a key
puts "What would you like to modify? (None, if there is nothing to change)"
change = gets.chomp
if (change.downcase != "none")
	puts "What is your new value for #{change}?"
	client[change.to_sym] = gets.chomp
	# Convert data type, if necessary
	if (change == "age") || (change == "num_children")
		client[change.to_sym] = client[change.to_sym].to_i	
	end
end

puts client
