

puts "Hello! What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born? (Please use A.D.)"
birth_year = gets.chomp.to_i
if ((2017 - age) == birth_year)
	age_check = true
else
	age_check = false
end

valid = 0
while (valid == 0)
	puts "Our company cafeteria serves some delicious garlic bread. Should we order some for you? Please enter 'yes' or 'no'."
	garlic_bread = gets.chomp
	if (garlic_bread == "yes") || (garlic_bread == "Yes") || (garlic_bread == "y") || (garlic_bread == "Y")
		garlic_check = true
		valid = 1
	elsif (garlic_bread == "no") || (garlic_bread == "No") || (garlic_bread == "n") || (garlic_bread == "N")
		garlic_check = false
		valid = 1
	else
		puts "You have provided an incorrect input! Please try again."
	end
end

valid = 0
while (valid == 0)
	puts "Would you like to enroll in the company's health insurance? Please enter 'yes' or 'no'."
	health_insurance = gets.chomp
	if (health_insurance == "yes") || (health_insurance == "Yes") || (health_insurance == "y") || (health_insurance == "Y")
		insurance_check = true
		valid = 1
	elsif (health_insurance == "no") || (health_insurance == "No") || (health_insurance == "n") || (health_insurance == "N")
		insurance_check = false
		valid = 1
	else
		puts "You have provided an incorrect input! Please try again."
	end
end

result = "Results inconclusive."

if ((age_check == true) && ((garlic_check == true) || (insurance_check == true)))
	result = "Probably not a vampire."
end

if ((age_check == false) && ((garlic_check == false) || (insurance_check == false)))
	result = "Probably a vampire."
end

if ((age_check == false) && ((garlic_check == false) && (insurance_check == false)))
	result = "Almost certainly a vampire."
end

if ((name == "Drake Cula") || (name == "Tu Fang"))
	result = "Definitely a vampire."
end

p result

