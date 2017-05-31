var colors = ["brown", "white", "black", "silver"];
var names = ["Bob", "Chester", "Marge", "Jan"];

colors.push("polka dots");
names.push("Hidalgo");

/*for (var i = 0; i < colors.length; i++) {
	horse['colors'] = colors[i];
	horse.names = names[i];
}*/

function Horse() {
	rand = Math.floor(Math.random() * colors.length);
	this['color'] = colors[rand];
	this.name = names[rand];
	console.log("We have created a horse named " + this.name + " that is " + this.color + "!");
}

var Horse1 = new Horse ();
var Horse2 = new Horse ();
var Horse3 = new Horse ();
var Horse4 = new Horse ();

console.log(colors);
console.log(Horse1);

var makes = ["Chevy", "Ford", "Honda", "Cadillac", "Tesla"];
var models = ["Tahoe", "Mustang", "Civic", "Deville", "Model S"];
var years = ["2017", "2010", "1990", "1900", "2500"];

function Car() {
	rand = Math.floor(Math.random() * colors.length);	
	this['color'] = colors[rand];
	this.name = names[rand];
	this.make = makes[rand];
	rand = Math.floor(Math.random() * colors.length);	
	this.model = models[rand];
	this.year = years[rand];
	this.start =  function() { console.log("Starting the " + this.year + " " + this.make + " " + this.model);	};
	this.valid = function() {
		if (makes.indexOf(this.make) == models.indexOf(this.model))
			console.log("This is a valid combination");
		else
			console.log("Your car is broken!");
	}
	console.log(makes.indexOf(this.make));
	console.log("A new car has been created!");
}

var Car1 = new Car();
console.log(Car1);
Car1.start();
Car1.valid();
var x;
for (x in Car1) {
	console.log(Car1[x]);
}