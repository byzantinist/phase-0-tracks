
def option_screen
	valid = false
	while (!valid)
		puts "Welcome to the Contact Information Database!"
		puts "Would you like to (A)dd an entry, (D)elete an entry, or (V)iew the database?"
		option = gets.chomp.downcase
		if (option == "a") || (option == "d") || (option == "v")
			valid = true
		else
			puts "You have entered an invalid option. Please try again."
		end
	end	
	puts option
end

option_screen