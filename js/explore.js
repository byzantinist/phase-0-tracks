// Pseudocode for Module 7.1. - Syntax - Release 4



// Function declaration
// 1. Take string as input
function reverse(input) {

//	var str = prompt("Hello! Please enter the string that you would like to reverse:", "");
//	console.log(str);
	
var string = input;
var string_length = string.length;
var reverse = "";

// 2. Reverse order of string
// Uses a for loop based on the length of the string
// Concatanates by combining the initially blank string with
// each letter in reverse order using a FOR loop.
for (var i = 0; i < string.length; i++) {
	reverse = reverse + string[string.length - 1 - i];
}

// 3. Output reversed string
console.log(reverse);

	if (1 == 1)

	if (1 != 1)
		console.log("This is false!");

}



reverse("TESTING")



