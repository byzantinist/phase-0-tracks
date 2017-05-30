class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

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

end

# Driver code
#ho1 = Santa.new("Male", "Indeterminate")
#ho1.speak
#ho1.eat_milk_and_cookies("oatmeal cookie")
## ho1.about


# Test driver code
#ho1.about
#ho1.celebrate_birthday
#ho1.get_mad_at("Rudolph")
#ho1.gender = "Female"
#puts ho1.age
#puts ho1.ethnicity
#ho1.about

def santa_generator
# Santa arrays
santas = []
santa_genders = ["male", "female", "agender", "intersex", "N/A", "gender fluid", "bigender", "XXY", "XXX", "neuter"]
santa_ethnicities = ["Caucasian", "Latina", "Asian", "Unicorn", "N/A", "Black", "Middle-Eastern", "Native American", "Aboriginal", "Alien"]

#santa_genders.length.times do |i|
#	santas << Santa.new(santa_genders[i], santa_genders[i])
#end

count = 0
while count < 100
	santas << Santa.new(santa_genders[rand(10)], santa_ethnicities[rand(10)])
	count += 1
end

santas.each {|i|
	i.age = rand(141)
	puts "Santa #{count} is #{i.gender}, #{i.ethnicity}, and #{i.age} years old."
}

end

santa_generator