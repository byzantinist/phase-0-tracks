# GPS 2-2
# GPS Partner: EJ Vickery
# GPS Guide: Jeff Fichtner

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Welcome and instructions
  # Ask for and set default quantity
  # Split string into keys in a hash (by spaces)
  # Set all values of the hash keys equal to the default quantity
  # Use print method to print the list to the console
# output: hash

def create_list(string)
    puts "What is the default item quantity?"
    default_quantity = gets.chomp.to_s
    list_array = string.split(' ')
    list_hash = {}
    list_array.each do |item|
        list_hash[item] = default_quantity
    end

    print_list(list_hash)

    list_hash
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
    # Identify the name of the hash
    # Check if key already exists and display error message
    # Add a new key based on item name
    # If the quantity is given, enter the quantity as the value of the key
        # Otherwise default value = 1
# output: hash

def add_an_item(list_hash,item_name)
    puts 'Adding the item: #{item_name}.'
    puts 'Specify a quantity or type "default".'
    quantity = gets.chomp.to_s

    if quantity.downcase == 'default'
        quantity = '1'
    end

    puts list_hash

    if !list_hash[item_name]
        puts 'Added the item: #{item_name}.'
        list_hash[item_name] = quantity
    else
        puts 'Item already exists.'
    end

    list_hash

end

# Method to remove an item from the list
# input: list, item name
# steps:
    # Identify the name of the hash
    # Check if key exists in the hash, otherwise display error message
    # If key exists, delete from the hash
# output: hash

def remove_an_item(list_hash,item_name)
    if list_hash[item_name]
        puts "Deleting item: #{item_name}."
        list_hash.delete(item_name)
    else
        puts "Item does not exist."
    end

    list_hash
end

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
    # Check if key exists in the hash, otherwise display error message
    # If key exists, update the value to the new quantity
# output: hash

def update_item_quantity(list_hash,item_name,quantity)
    if list_hash[item_name]
        puts "Updated the quantity of #{item_name} to: #{quantity}."
        list_hash[item_name] = quantity
    else
        puts "Item does not exist."
    end

    list_hash
end

# Method to print a list and make it look pretty
# input: list
# steps:
    # Loop through the hash
    # Display each key-value pair as a statement
# output: hash

def print_list(list_hash)
    list_hash.each do |key,value|
        puts "The quantity of #{key} is: #{value}"
    end
end

# Release 4: Reflect

# 1. I learned how pseudocode can be helpful in separating out each of
# the methods you plan to write and how you can break down each method into
# component steps.

# 2. With hashes, you can store both keys and values. If you went with arrays
# you would need two separate arrays. This is relevant because with the list
# you also needed to store the quantity along with the item. The downside to hashes 
# is that they are a little more complicated to use and understand but they have 
# far more potential.

# 3. A method returns whatever you want it to! Normally it returns the last thing
# before the "end" line. That is why you should be careful if the last line is
# simply a "puts" statement.

# 4. You can pass any sort of object into a method as an argument. However,
# you are not able to pass a method as an argument since it is not an object.

# 5. You can create special data structures that pass the information along from
# one method to another. Or you can have one method call another method. Or you
# can have one method return something that is used in another method. Or you
# may be able to use certain class attributes to store information from different
# methods.

# 6. This GPS really improved my familiarity and mastery of hashes. I feel much
# more confident about using them now. (Also thanks to a great partner!)