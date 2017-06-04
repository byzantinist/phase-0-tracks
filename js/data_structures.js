// Module 7.2 - Mandatory Pairing: Data Structures
// Pair Partner: Katy McCloskey

// Release 0: An array of four colors
var colors = ["brown", "white", "black", "silver"];

// Release 0: An array of four names
var names = ["Bob", "Chester", "Marge", "Jan"];

// Release 0: Add a color and a name to each respective array
colors.push("polka dots");
names.push("Hidalgo");

// Release 1: Create a Horse object using a constructor function
function Horse() {
	// Random number generator
	rand = Math.floor(Math.random() * colors.length);
	// Release 1: Randomly generates a color and a name for the horse
	this['color'] = colors[rand];
	this.name = names[rand];
	console.log("We have created a horse named " + this.name + " that is " + this.color + "!");
}

// Driver code to create new horses
var Horse1 = new Horse ();
var Horse2 = new Horse ();
var Horse3 = new Horse ();
var Horse4 = new Horse ();

console.log(colors);
console.log(Horse1);

// Release 2: Array declarations for the car
var makes = ["Chevy", "Ford", "Honda", "Cadillac", "Tesla"];
var models = ["Tahoe", "Mustang", "Civic", "Deville", "Model S"];
var years = ["2017", "2010", "1990", "1900", "2500"];

// Release 2: Constructor function for a car
function Car() {
	rand = Math.floor(Math.random() * colors.length);	
	this['color'] = colors[rand];
	this.name = names[rand];
	this.make = makes[rand];
	rand = Math.floor(Math.random() * colors.length);	
	this.model = models[rand];
	this.year = years[rand];
	// Basic function that simply outputs the information
	this.start =  function() { console.log("Starting the " + this.year + " " + this.make + " " + this.model);	};
	// Complex function that compares make and model to see if it is a valid combination
	this.valid = function() {
		if (makes.indexOf(this.make) == models.indexOf(this.model))
			console.log("This is a valid combination");
		else
			console.log("Your car is broken!");
	}
	// This was for error checking!
	// console.log(makes.indexOf(this.make));
	console.log("A new car has been created!");
}

// Release 3: Driver code to create a new car and test the functions
var Car1 = new Car();
console.log(Car1);
Car1.start();
Car1.valid();
// Release 3: Looping through the keys and values
var x;
for (x in Car1) {
	console.log(Car1[x]);
}

// Declare an object via literal construction
var cat = {name: 'Mittens', 'age': 1, color: "black", lucky: true};
console.log(cat);