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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

# Driver code
ho1 = Santa.new("Male", "Indeterminate")
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

ho1.about
ho1.celebrate_birthday
ho1.get_mad_at("Rudolph")
ho1.gender = "Unknown"
puts ho1.age
puts ho1.ethnicity