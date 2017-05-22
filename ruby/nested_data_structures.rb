# For a blast from the past, I am using the Zoo data that I used back in Module 1.3

zoo = {
	red_pandas: [
		"Babu",
		"Basil",
		"Futa",
		"Rusty",
		"Spark"
	],
	chupacabras: [
		"Grunch",
		"Peuchen",
		"Sigin"
	],
	tasmanian_tigers: [
		"Benjamin"
	],
	status: {
		financial: "profitable",
		hours: "open"
	}
}

puts zoo
puts zoo[:red_pandas]
puts zoo[:chupacabras][2].upcase
puts zoo[:status]
puts zoo[:status][:hours]