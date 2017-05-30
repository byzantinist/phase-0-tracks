# Class declaration
class Game
	attr_reader :secret, :length, :secret_array
	attr_accessor :guesses, :history, :display

	def initialize
		# Welcome message
		puts "Welcome to Hangunicorn, a game where you need to correctly guess a word to save the life of an innocent unicorn!"

		# Player 1: Enters a word or phrase
		puts "Player 1, please enter your secret word:"
		# For Ruby, we use gets.chomp
		# For RSpec purposes, we assume the user will input "unicorn"
		@secret = gets.chomp.downcase
		#@secret = "unicorn"
		puts "\e[H\e[2J"
		puts "Player 1 has entered the secret word!"

		# Establishes variable for number of guesses remaining, based on the length of the word
		@length = @secret.length
		@guesses = 2 * @length
		puts "Since the secret word is #{@length} characters long, you will get #{guesses} guesses!"

		# An array to store the history of past guesses
		@history = []	
		
		# Breaks the secret word into an array and creates the word display for the user
		@secret_array = @secret.split('')
		@display = []
		@secret_array.each {@display.push("_")}
	end

	# Player 2: Attempts to guess the word
	def guessing
		# Feedback on the current state of the word
		puts "Here is your secret word: #{@display.join(' ')}"
		puts "Here are your previous guesses: #{@history.join(' ')}"
		puts "You have #{guesses} guesses left! Please save the unicorn!"
		puts "Player 2, please guess a letter:"

		letter = gets.chomp.downcase
		#Test code for Rspec
		#letter = 'o'

		if !@history.include?(letter)
			@history << letter
			@guesses += -1
			count = 0
			while count < @length
				if @secret_array[count] == letter
					@display[count] = letter
				end
				count += 1
			end
		else
			# Repeated guesses do not count: @guesses does not decrement in this case
			puts "You have already guessed the letter '#{letter}'!"
		end

		# Congratulatory Message or taunting Message
		if @display == @secret_array
			puts "Congratulations! You have successfully saved the unicorn by guessing the secret word. You still had #{guesses} guesses left!"
			@guesses = "victory"
		elsif @guesses == 0
			puts "Oh noes! You have failed to guess the secret word. The unicorn is dead and it is all YOUR FAULT!  :'("
		end

		if @guesses == "victory"
			@guesses = 0
		end
	end

end

# Driver code
lets_play = Game.new
while lets_play.guesses > 0
	lets_play.guessing
end