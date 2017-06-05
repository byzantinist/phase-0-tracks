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
		console.log(current_longest);
	return current_longest;
}

// Driver code
longest(["long phrase","longest phrase","longer phrase"])