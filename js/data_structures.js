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

var Horse1 = new Horse ()
var Horse2 = new Horse ()
var Horse3 = new Horse ()
var Horse4 = new Horse ()

console.log(colors)
console.log(Horse1)
