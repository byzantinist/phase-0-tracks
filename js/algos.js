// Release 0: Find the Longest Phrase

// 1. Read in array
function longest(array) {
	current_longest = "";
	current_length = 0;
	// 2. Look for longest word
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > current_length) {
				current_longest = array[i];
				current_length = array[i].length;
		}
	}
	// 3. Output array
	// console.log(current_longest);
	return current_longest;
}

// Driver code
console.log(longest(["long phrase","longest phrase","longer phrase"]));

// Release 1: Find a Key-Value Match

// 1. Read in two objects
function key_value_match(object1, object2) {
	key1 = Object.keys(object1);
	key2 = Object.keys(object2);
	value1 = key1.map(function(key) {
		return object1[key];
	})
	value2 = key2.map(function(key) {
		return object2[key];
	})

	match = false;

	// 2. Use for loop for first object
	for (var i = 0; i < key1.length; i++) {
		// 3. Use for loop for second object
		for (var j = 0; j < key2.length; j++) {
			// 4. Look for match
			if (key1[i] == key2[j]) {
				if (value1[i] == value2[j]) {
					match = true;
				}
			}
		}
	}
	// 5. Return true or false
	console.log(match);
}

// Driver code
key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 54});
key_value_match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});
key_value_match({animal: "Dog", legs: 4}, {animal: "Cat", legs: 3});
key_value_match({animal: "Dog", legs: 4}, {animal: "Cat", legs: 4});

// Release 2: Generate Random Test Data

// 1. Takes in an integer as input
function random(number) {
	// 2. Creates an array
	array = [];
	characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

	// 3. For loop based on integer count
	for (var i  = 0; i < number; i++) {
		// 4. Generates a random word
		new_word = "";
		random_length = 1 + Math.floor(Math.random()*10);
		for (var j = 0; j < random_length; j++) {
			new_word += characters[(Math.floor(Math.random()*52))];
		}
		array.push(new_word);
	}
	// 5. Outputs array
	return array;
}


// Driver code
for (var z = 0; z < 10; z++) {
	console.log(longest(random(10)));	
}
