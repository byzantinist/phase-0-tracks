// Pseudocode for Module 7.1. - Syntax - Release 4

// Function declaration
// 1. Take string as input
function reverse(input) {

// Tried using "prompt" but I keep getting "prompt is not defined"
// Google search didn't help. Went to office hours with Matt Higgins but we weren't able to figure out a good solution.
// var str = prompt("Hello! Please enter the string that you would like to reverse:", "");

var string = input;
var string_length = string.length;
var reverse = "";

// 2. Reverse order of string
// Uses a for loop based on the length of the string.
// Concatanates by combining the initially blank string with
// each letter in reverse order using a FOR loop.
for (var i = 0; i < string.length; i++) {
	reverse = reverse + string[string.length - 1 - i];
}

// Checks for a palindrome
// This could also be in the driver code or in a separate function (which is
// then called by the driver code)
if (string == reverse)
	console.log("You entered a palindrome: " + string);
else
	console.log("You entered a non-palindrome: " + string);

// 3. Output reversed string
console.log("Your reversed string is: " + reverse);

return reverse;
}

// Driver code
var storing1 = reverse("racecar")
var storing2 = reverse("testing")
if (1 == 1) {
	console.log("Since this is always true: " + storing1);
	console.log("Since this is always true: " + storing2);
}
