class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def about
		puts @gender
		puts @ethnicity
		puts @reindeer_ranking
		puts @age
	end

end

# Driver code
ho1 = Santa.new("Baby Santa", "Indeterminate")
ho1.speak
ho1.eat_milk_and_cookies("oatmeal cookie")
## ho1.about

# Santa arrays
santas = []
santa_genders = ["male", "female", "agender", "intersex", "N/A"]
santa_ethnicities = ["Caucasian", "Latina", "Asian", "Unicorn", "N/A"]
santa_genders.length.times do |i|
	santas << Santa.new(santa_genders[i], santa_genders[i])
end
puts santas