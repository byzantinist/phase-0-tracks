# Class declaration
class Game
	attr_reader :secret, :length, :secret_array
	attr_accessor :guesses, :history, :display

	def initialize
		# Welcome message
		puts "Welcome to Hangunicorn, a game where you need to correctly guess a word or phrase to save the life of an innocent baby unicorn!"

		# Player 1: Enters a word or phrase
		puts "Player 1, please enter your secret word or phrase:"

		# For Ruby, we use gets.chomp
		# For RSpec purposes, we assume the user will input "unicorn"
		@secret = gets.chomp.downcase
		#@secret = "unicorn"

		# This clears the screen so Player 2 cannot see what Player 1 entered
		puts "\e[H\e[2J"
		puts "Player 1 has entered the secret word or phrase!"

		# Establishes variable for number of guesses remaining, based on the length of the word
		@length = @secret.length
		@guesses = 2 * @length
		puts "Since the secret word or phrase is #{@length} characters long (including possible spaces), you will get #{guesses} guesses!"

		# An array to store the history of past guesses
		@history = []	
		
		# Breaks the secret word into an array and creates the display for the user
		# It is also possible to do this with hashes. One of the values could be a boolean
		# true (revealed) or false (not revealed) and display the character or the "_" accordingly
		@secret_array = @secret.split('')
		@display = []
		@secret_array.each {@display.push("_")}
	end

	# Player 2: Attempts to guess the word
	def guessing
		# Feedback on the current state of the word
		puts "Here is your secret word or phrase: #{@display.join(' ')}"
		puts "Here are your previous guesses: #{@history.join(' ')}"
		puts "You have #{guesses} guesses left! Please save the unicorn!"
		# Some additional taunting
		if @guesses == 1
			puts "Uh oh! You only have a single guess left. This is the unicorn's last chance!"
		elsif @guesses == @length
			puts "Uh oh! You are halfway through your guesses. The unicorn is in trouble!"
		end

		puts "Player 2, please guess a letter, character, or space:"
		character = gets.chomp.downcase
		#Test code for RSpec
		#character = 'o'

		# If the character has not been previously guessed, then you decrement the number
		# of guesses. And for each index/character in the secret_array that matches the
		# guessed character, you copy over its value into the display.
		if !@history.include?(character)
			@history << character
			@guesses += -1
			count = 0
			while count < @length
				if @secret_array[count] == character
					@display[count] = character
				end
				count += 1
			end
		else
			# Repeated guesses do not count: @guesses does not decrement in this case
			puts "You have already guessed the letter, character, or space: '#{character}'!"
		end

		# Congratulatory message or taunting message
		if @display == @secret_array
			puts "Congratulations! You have successfully saved the unicorn by guessing the secret word/phrase: '#{@secret}'! You still had #{guesses} guesses left!"
			@guesses = 0
		elsif @guesses == 0
			puts "Oh noes! You have failed to guess the secret word or phrase, which was: '#{@secret}'! The unicorn is dead and it is all YOUR FAULT!  :'("
			puts "Better luck next time!"
		end
	end

end

# Driver code
lets_play = Game.new
while lets_play.guesses > 0
	lets_play.guessing
end