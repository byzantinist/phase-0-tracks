# Maintain Contact Information in a Database

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("contacts.db")

# create contacts table if it is not there already
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS contacts(
		id INTEGER PRIMARY KEY,
		first_name VARCHAR(255),
		last_name VARCHAR(255),
		phone INT
	)
SQL
db.execute(create_table_cmd)

# Main screen that runs sub-methods
def main_screen(db)
	continue = true
	while (continue)
		option = option_screen
		if option == "q"
			continue = false
		elsif option == "a"
			add(db)
		elsif option == 'd'
			delete(db)
		elsif option == "v"
			view(db)
		end
	end
end

# Welcome screen that figures out what the user wants to do
def option_screen
	valid = false
	while (!valid)
		puts "Welcome to the Contact Information Database!"
		puts "Would you like to (A)dd an entry, (D)elete an entry, (V)iew the database, or (Q)uit?"
		option = gets.chomp.downcase
		if (option == "a") || (option == "d") || (option == "v") || (option == "q")
			valid = true
		else
			puts "You have entered an invalid option. Please try again."
		end
	end	
	option
end

# Add entry to the contacts database
def add(db)
	puts "Adding a new contact to the database...."
	puts "What is the contact's first name?"
	first_name = gets.chomp
	puts "What is #{first_name}'s last name?"
	last_name = gets.chomp
	valid = false
	while (!valid)
		puts "What is #{first_name} #{last_name}'s phone number? (No hyphens or parentheses)"
		phone = gets.chomp.to_i
		if (phone == 0)
			puts "You have entered an invalid phone number!"
		else
			valid = true
		end
	end
	db.execute("INSERT INTO contacts (first_name, last_name, phone) VALUES ('#{first_name}', '#{last_name}', #{phone})")
	puts "#{first_name} #{last_name} has been entered into the contact database with the following phone number: #{phone}!"	
end

# Delete entry in the contacts database
def delete(db)
	valid = false
	while (!valid)
		puts "Which entry number would you like to delete?"
		deletion = gets.chomp.to_i
		index_exists = db.execute("SELECT count(id) FROM contacts WHERE id=#{deletion}")
		index_exists.to_s.to_i
		if (index_exists == [[0]])
			puts "Sorry, you have entered an invalid entry number!"
		else
			valid = true
		end
	end
	entries = db.execute("SELECT * FROM contacts WHERE id=#{deletion}")
	entries.each do |entry|
		puts "Deleting #{entry[1]} #{entry[2]}'s phone number of #{entry[3]}!"
	end
	db.execute("DELETE FROM CONTACTS where id = '#{deletion}'")
end

# Display the contacts database
def view(db)
	entries = db.execute("SELECT * FROM contacts")
	entries.each do |entry|
		puts "#{entry[0]}. #{entry[1]} #{entry[2]}'s phone number is #{entry[3]}."
	end
end

main_screen(db)