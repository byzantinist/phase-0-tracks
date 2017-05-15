
# Welcome screen. Initializes count for the while loop which is used to determine how many employees to process.
puts "Welcome to the Werewolf Intelligence Bureau!"
puts "How many employees would you like to process?"
employee_count = gets.chomp.to_i
count = 0

# This runs for each individual employee.
while (count < employee_count)
	puts "Hello! What is your name?"
	name = gets.chomp

	# Compares the age given to the birth year.
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born? (Please use A.D.)"
	birth_year = gets.chomp.to_i
	if ((2017 - age) == birth_year)
		age_check = true
	else
		age_check = false
	end

	# This while loop ensures that a valid "Yes" or "No" response is given.
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

	# This while loop ensures that a valid "Yes" or "No" response is given.
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

	# This while loop is used to collect allergy information. We are mainly looking for "sunshine" as an answer.
	allergy_check = true
	more_allergies = true
	while (more_allergies == true)
		puts "Please enter your allergies, one at a time. Type 'done' when you are finished or if you have none."
		allergy = gets.chomp
		if ((allergy == "sunshine") || (allergy == "Sunshine"))
			allergy_check = false
			more_allergies = false
		elsif ((allergy == "done")) || (allergy == "Done")
			more_allergies = false
		end
	end

	# Based on the given conditions, we determine the result - is the employee likely to be a vampire?
	if (allergy_check != true)
		result = "Probably a vampire."
	else
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
	end

	puts "Based on our proprietary vampire detection algorithm, our determination for #{name} is: #{result}"
	count += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."