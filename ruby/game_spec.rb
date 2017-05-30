require_relative 'game'

describe Game do 
	let(:game) { Game.new }

	# This tests whether we can use the getter method to retrieve the secret word.
	# Since the actual word is user-generated, it will simply appear as "" in RSpec
	# so we have a special test line in the Ruby file which sets it to "unicorn"
	it "input secret word" do
    expect(game.secret).to eq "unicorn"
  end

  it "calculate length" do
  	expect(game.length). to eq 7
  end

  it "calculate initial guesses" do
  	expect(game.guesses). to eq 14
  end

  it "breaks secret word into array" do
  	expect(game.secret_array). to eq ["u", "n", "i", "c", "o", "r", "n"]
  end

  it "displays blank letters to user" do
  	expect(game.display.join(' ')). to eq "_ _ _ _ _ _ _"
  end
	
  it "player guesses 'o'" do
  	game.guessing
  	expect(game.history). to eq ["o"]
  	expect(game.guesses). to eq 13
  	expect(game.display.join(' ')). to eq "_ _ _ _ o _ _"
  end

  # Overall, I found RSpec to be rather cumbersome to use with programs that
  # require user-input. I was able to hardcode some results and comment/uncomment
  # it out. Is there a better solution?

end